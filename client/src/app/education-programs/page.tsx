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
}

const EducationProgramsPage = () => {

    return (
        <Container>
            <h1 className="scroll-m-20 pt-6 text-4xl font-bold tracking-tight text-balance">
           Образовательные программы
            </h1>
            <ProfessionList/>
        </Container>
    );
};

export default EducationProgramsPage;
