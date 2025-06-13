import React, {useEffect, useState} from 'react';
import {ADM_URL} from "@/config/instance";
import GraduateCheckboxes from "@/app/education-programs/(components)/blocks/сheckbox-filter";
import {Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle} from "@/shared/ui/card";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import Container from "@/shared/ui/wrappers/container";


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
        <div className="flex items-start gap-4 w-full">
            <div>
                <GraduateCheckboxes
                    selected={selectedGraduates}
                    onChange={setSelectedGraduates}
                />
            </div>

            <div className="min-h-[800px] w-full">
                <main className="">
                    {professions.map(({title, subtitle,id, code, form, graduates}) => (
                        <Card key={id} className="mb-4 rounded-4xl select-none cursor-default">
                            <Container>
                                <CardHeader className="border-b ">
                                    <CardTitle>{code || ''} {subtitle || ''}</CardTitle>
                                    <CardDescription>{title || ''}</CardDescription>
                                </CardHeader>
                            </Container>
                            <CardFooter className="flex justify-between">
                                <CardContent className="flex gap-2 p-0">
                            <span className="bg-muted-foreground p-2 rounded-2xl">
                                {graduates || ''}
                            </span>
                                    {form && (
                                        <span className="bg-muted-foreground p-2 rounded-2xl">{form}</span>
                                    )}
                                </CardContent>
                                <Button className="hover:bg-ring text-secondary border"><ArrowRight/></Button>
                            </CardFooter>
                        </Card>
                    ))}</main>

            </div>
        </div>
    );
};

export default ProfessionList;

