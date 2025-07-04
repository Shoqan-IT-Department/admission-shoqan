import { ADM_URL } from "@/config/instance";
import { Metadata } from "next";
import ProfessionList from "@/app/[locale]/education-programs/(components)/blocks/profession-list";

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

type PageProps = {
    params: { locale: string };
};

export const revalidate = 60; // ISR: каждые 60 секунд

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
    return {
        title: params.locale === 'kk' ? 'Білім беру бағдарламалары' : 'Образовательные программы',
    };
}

export default async function EducationProgramsPage({ params }: PageProps) {
    const fallbackLocale = 'ru-RU';
    const locale = params.locale;

    const buildQuery = (loc: string) => {
        const params = new URLSearchParams();
        params.set('locale', loc);
        return `/api/professions?${params.toString()}`;
    };

    let data: ProfessionType[] = [];
    const localesToTry = [locale, fallbackLocale];

    for (const loc of localesToTry) {
        const url = buildQuery(loc);
        const res = await ADM_URL.get<{ data: ProfessionType[] }>(url);
        data = res.data.data;
        if (data.length > 0) break;
    }

    return <ProfessionList initialProfessions={data} locale={locale} />;
}
