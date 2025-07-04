// app/[locale]/page.tsx
import Container from "@/shared/ui/wrappers/container";
import NewsBlock from "@/app/[locale]/(components)/(blocks)/news-block";
import InfoBlock from "@/app/[locale]/(components)/(blocks)/info-block";
import CommisionBlock from "@/app/[locale]/(components)/(blocks)/comission-block";
import {getLocale} from "next-intl/server";

export default async function HomePage() {
    const locale = await getLocale();

    return (
        <Container>
            <InfoBlock locale={locale} />
            <NewsBlock locale={locale} />
            <CommisionBlock locale={locale} />
        </Container>
    );
}
