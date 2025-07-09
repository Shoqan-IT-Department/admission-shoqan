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
import { cn } from "@/lib/utils";

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

    const fallbackLocale = 'ru-RU';

    const buildQuery = (graduates: string[], loc: string) => {
        const params = new URLSearchParams();
        params.set('locale', loc);

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

            for (const loc of localesToTry) {
                const url = buildQuery(selectedGraduates, loc);
                const res = await ADM_URL.get<{ data: ProfessionType[] }>(url);
                result = res.data.data;
                if (result.length > 0) break;
            }

            setProfessions(result);
            setCurrentPage(1); // сброс при фильтрации
        } catch (error) {
            console.error("Ошибка при загрузке профессий:", error);
        }
    };

    useEffect(() => {
        fetchProfessions();
    }, [selectedGraduates, locale]);

    const totalPages = Math.ceil(professions.length / ITEMS_PER_PAGE);
    const startIndex = (currentPage - 1) * ITEMS_PER_PAGE;
    const paginatedProfessions = professions.slice(startIndex, startIndex + ITEMS_PER_PAGE);

    const getVisiblePageNumbers = (totalPages: number, currentPage: number) => {
        const pages: (number | string)[] = [];

        if (totalPages <= 7) {
            for (let i = 1; i <= totalPages; i++) pages.push(i);
        } else {
            pages.push(1);

            if (currentPage > 3) pages.push("...");

            const start = Math.max(2, currentPage - 1);
            const end = Math.min(totalPages - 1, currentPage + 1);

            for (let i = start; i <= end; i++) pages.push(i);

            if (currentPage < totalPages - 2) pages.push("...");

            pages.push(totalPages);
        }

        return pages;
    };

    return (
        <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
            <div className="w-full lg:w-[300px]">
                <GraduateCheckboxes
                    selected={selectedGraduates}
                    onChange={setSelectedGraduates}
                />
            </div>

            <div className="min-h-[800px] w-full">
                <main>
                    {paginatedProfessions.map((prof) => (
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

                    {/* Адаптивная пагинация */}
                </main>
                 <div className='w-full items center pb-6'>
                     {totalPages > 1 && (
                        <div className="flex justify-center mt-6 gap-2 flex-wrap">
                            <Button
                                variant="outline"
                                disabled={currentPage === 1}
                                onClick={() => setCurrentPage((p) => p - 1)}
                            >
                                Назад
                            </Button>

                            {getVisiblePageNumbers(totalPages, currentPage).map((page, i) =>
                                typeof page === "number" ? (
                                    <Button
    key={i}
    className={cn(
        currentPage === page ? 'text-muted-foreground' : 'text-foreground'
    )}
    variant={currentPage === page ? 'default' : 'outline'}
    onClick={() => setCurrentPage(page)}
>
    {page}
</Button>
                                ) : (
                                    <span key={i} className="px-2 py-1 text-popover select-none">…</span>
                                )
                            )}

                            <Button
                                variant="outline"
                                disabled={currentPage === totalPages}
                                onClick={() => setCurrentPage((p) => p + 1)}
                            >
                                Вперёд
                            </Button>
                        </div>
                    )}
                   </div>
            </div>
        </div>
    );
};

export default ProfessionList;
