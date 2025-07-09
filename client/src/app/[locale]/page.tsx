// app/[locale]/page.tsx
import React, {use} from "react";
import Container from "@/shared/ui/wrappers/container";
import NewsBlock from "@/app/[locale]/(components)/(blocks)/news-block";
import ComponentsBlock from "@/app/[locale]/(components)/(blocks)/components-block";
import CommisionBlock from "@/app/[locale]/(components)/(blocks)/comission-block";


const HomePage = ({ params }: { params: Promise<{ locale: string }> }) => {
    const { locale } = use(params);
    return (
        <Container >
            <ComponentsBlock/>
            <CommisionBlock/>
            <NewsBlock locale={locale} />
        </Container>

    )
}

export default HomePage;