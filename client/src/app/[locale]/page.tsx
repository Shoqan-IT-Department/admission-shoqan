import React, {use} from "react";
import Container from "@/shared/ui/wrappers/container";
import NewsBlock from "@/app/[locale]/(components)/(blocks)/news-block";
import InfoBlock from "@/app/[locale]/(components)/(blocks)/info-block";
import CommisionBlock from "@/app/[locale]/(components)/(blocks)/comission-block";


const HomePage = ({ params }: { params: Promise<{ locale: string }> }) => {
    const { locale } = use(params);
    return (
        <Container >
            <InfoBlock/>
            <NewsBlock locale={locale} />
            <CommisionBlock/>
        </Container>

    )
}

export default HomePage;