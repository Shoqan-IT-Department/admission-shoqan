'use client';

import React, { useEffect, useState } from 'react';
import { ADM_URL } from "@/config/instance";
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle
} from "@/shared/ui/card";
import { Button } from "@/shared/ui/button";
import { ArrowRight } from "lucide-react";
import Container from "@/shared/ui/wrappers/container";
import Link from "next/link";
import GraduateCheckboxes from "@/app/[locale]/education-programs/(components)/blocks/сheckbox-filter";
import Pagination from "@/shared/ui/pagination";

type ProfessionType = {
    id: number;
    documentId: string;
    title: string;
    subtitle: string | null;
    code: string;
    form: string | null;
    graduates: string;
    createdAt: string;
    updatedAt: string;
    publishedAt: string;
    locale: string;
    url: string | null;
};

type Props = {
    locale: string;
};

const ITEMS_PER_PAGE = 5;

const ProfessionList = ({ locale }: Props) => {
    const [selectedGraduates, setSelectedGraduates] = useState<string[]>([]);
    const [professions, setProfessions] = useState<ProfessionType[]>([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [totalCount, setTotalCount] = useState(0);

    const fallbackLocale = 'ru-RU';

    const buildQuery = (graduates: string[], loc: string, start: number, limit: number) => {
        const params = new URLSearchParams();
        params.set('locale', loc);
        params.set('pagination[start]', start.toString());
        params.set('pagination[limit]', limit.toString());

        if (graduates.length === 1) {
            params.set("filters[graduates][$eq]", graduates[0]);
        } else if (graduates.length > 1) {
            params.set("filters[graduates][$in]", graduates.join(","));
        }

        return `/api/professions?${params.toString()}`;
    };

    const fetchProfessions = async () => {
        try {
            const localesToTry = [locale, fallbackLocale];
            let result: ProfessionType[] = [];
            let total = 0;

            for (const loc of localesToTry) {
                const start = (currentPage - 1) * ITEMS_PER_PAGE;
                const url = buildQuery(selectedGraduates, loc, start, ITEMS_PER_PAGE);
                const res = await ADM_URL.get<{data: ProfessionType[]; meta: { pagination: { total: number } };}>(url);
                result = res.data.data;
                total = res.data.meta.pagination.total;
                if (result.length > 0) break;
            }

            setProfessions(result);
            setTotalCount(total);
        } catch (error) {
            console.error("Ошибка при загрузке профессий:", error);
        }
    };

    // Загружаем данные при изменении фильтра или страницы
    useEffect(() => {
        fetchProfessions();
    }, [selectedGraduates, locale, currentPage]);

    // Скроллим вверх при смене страницы
    useEffect(() => {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }, [currentPage]);

    const totalPages = Math.ceil(totalCount / ITEMS_PER_PAGE);

    return (
        <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
            <div className="w-full lg:w-[300px]">
                <GraduateCheckboxes
                    selected={selectedGraduates}
                    onChange={(selected) => {
                        setCurrentPage(1); // сброс при смене фильтра
                        setSelectedGraduates(selected);
                    }}
                />
            </div>

            <div className="min-h-[800px] w-full">
                <main>
                    {professions.map((prof) => (
                        <Card
                            key={prof.id}
                            className="mb-4 rounded-4xl select-none cursor-default"
                        >
                            <Container>
                                <Link href={prof.url || ''}>
                                    <CardHeader className="border-b">
                                        <CardTitle>
                                            {prof.code} {prof.subtitle || ''}
                                        </CardTitle>
                                        <CardDescription>{prof.title}</CardDescription>
                                    </CardHeader>
                                </Link>
                            </Container>

                            <CardFooter className="flex flex-col sm:flex-row justify-between gap-4 sm:gap-0">
                                <CardContent className="flex flex-wrap gap-2 p-0">
                                    <span className="bg-muted-foreground p-2 rounded-2xl">
                                        {prof.graduates}
                                    </span>
                                    {prof.form && (
                                        <span className="bg-muted-foreground p-2 rounded-2xl">
                                            {prof.form}
                                        </span>
                                    )}
                                </CardContent>
                                <Link href={prof.url || ''}>
                                    <Button className="hover:bg-ring text-secondary border self-end sm:self-auto">
                                        <ArrowRight />
                                    </Button>
                                </Link>
                            </CardFooter>
                        </Card>
                    ))}
                </main>

                <div className='w-full items-center pb-6'>
                    <Pagination
                        totalPages={totalPages}
                        currentPage={currentPage}
                        onChange={setCurrentPage}
                    />
                </div>
            </div>
        </div>
    );
};

export default ProfessionList;
