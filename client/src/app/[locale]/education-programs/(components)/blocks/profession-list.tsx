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

const ProfessionList = ({ locale }: Props) => {

    const [selectedGraduates, setSelectedGraduates] = useState<string[]>([]);
    const [professions, setProfessions] = useState<ProfessionType[]>([]);

    const fallbackLocale = 'ru-RU'; // запасной язык

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
                console.log("fetching from:", url);
                const res = await ADM_URL.get<{ data: ProfessionType[] }>(url);
                result = res.data.data;


                if (result.length > 0) break;
            }
            console.log(result);
            setProfessions(result);
        } catch (error) {
            console.error("Ошибка при загрузке профессий:", error);
        }
    };

    useEffect(() => {
        fetchProfessions();
    }, [selectedGraduates, locale]);

    return (
        <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
            {/* Фильтры */}
            <div className="w-full lg:w-[300px]">
                <GraduateCheckboxes
                    selected={selectedGraduates}
                    onChange={setSelectedGraduates}
                />
            </div>

            {/* Карточки */}
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
            </div>
        </div>
    );
};

export default ProfessionList;
