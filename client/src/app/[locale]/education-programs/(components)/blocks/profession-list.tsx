'use client'

import React, {useEffect, useState} from 'react';
import {ADM_URL} from "@/config/instance";
import {Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle} from "@/shared/ui/card";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
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
    url:string
};


const ProfessionList = () => {

    const [selectedGraduates, setSelectedGraduates] = useState<string[]>([]);
    const [professions, setProfessions] = useState<ProfessionType[]>([]);

    const buildQuery = (graduates: string[]) => {
        const params = new URLSearchParams();

        if (graduates.length === 1) {
            params.append("filters[graduates][$eq]", graduates[0]);
        } else if (graduates.length > 1) {
            graduates.forEach((grad, index) => {
                params.append(`filters[graduates][$eq][${index}]`, grad);
            });
        }

        return `/api/professions?${params.toString()}`;
    };

    useEffect(() => {
        const fetchProfessions = async () => {
            try {
                const url = buildQuery(selectedGraduates);
                const response = await ADM_URL.get<{ data: ProfessionType[] }>(url);
                setProfessions(response.data.data);
            } catch (error) {
                console.error("Ошибка при загрузке профессий:", error);
            }
        };

        fetchProfessions();
    }, [selectedGraduates]);

    return (
        <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
            {/* Блок фильтров */}
            <div className="w-full lg:w-[300px]">
                <GraduateCheckboxes
                    selected={selectedGraduates}
                    onChange={setSelectedGraduates}
                />
            </div>

            {/* Блок с карточками */}
            <div className="min-h-[800px] w-full">
                <main>
                    {professions.map(({ title, subtitle, id, code, form, graduates,url }) => (
                        <Card
                            key={id}
                            className="mb-4 rounded-4xl select-none cursor-default"
                        >
                            <Container>
                                <Link href={url || ''   }>
                                <CardHeader className="border-b">
                                <CardTitle>
                                    {code || ''} {subtitle || ''}
                                </CardTitle>
                                <CardDescription>{title || ''}</CardDescription>
                            </CardHeader>
                                </Link>
                            </Container>

                            <CardFooter className="flex flex-col sm:flex-row justify-between gap-4 sm:gap-0">
                                <CardContent className="flex flex-wrap gap-2 p-0">
              <span className="bg-muted-foreground p-2 rounded-2xl">
                {graduates || ''}
              </span>
                                    {form && (
                                        <span className="bg-muted-foreground p-2 rounded-2xl">
                  {form}
                </span>
                                    )}
                                </CardContent>
                                <Link href={url || ''   }>
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

