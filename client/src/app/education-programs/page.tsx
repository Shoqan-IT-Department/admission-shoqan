'use client'

import React from 'react';
import Container from "@/shared/ui/wrappers/container";
import ProfessionList from "@/app/education-programs/(components)/blocks/profession-list";
import RoadBlock from "@/app/(components)/(blocks)/road-block";

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
    url: string;
}

const EducationProgramsPage = (profession: ProfessionType) => {

    return (
        <Container>
            <h1 className="scroll-m-20 pt-6 text-4xl font-bold tracking-tight text-balance mb-10">
           Образовательные программы
            </h1>
            <ProfessionList profession={profession}/>
        </Container>
    );
};

export default EducationProgramsPage;
