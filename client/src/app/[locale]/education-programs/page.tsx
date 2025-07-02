'use client'

import React, {use} from 'react';
import Container from "@/shared/ui/wrappers/container";
import ProfessionList from "@/app/[locale]/education-programs/(components)/blocks/profession-list";
import { useTranslations } from 'next-intl';

type PageProps = {
    params: {
        locale: string;
    };
};

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

export default function EducationProgramsPage ({ params }: { params: Promise<{ locale: string }> }) {
    const { locale } = use(params);
    const t = useTranslations('ProffesionPage')
    return (
        <Container>
            <h1 className="scroll-m-20 pt-6 text-4xl font-bold tracking-tight text-balance mb-10">
                {t('title')}
            </h1>
            <ProfessionList locale={locale}/>
        </Container>
    );
};


