import React from "react";
import Container from "@/shared/ui/wrappers/container";
import NewsBlock from "@/app/[locale]/(components)/(blocks)/news-block";
import InfoBlock from "@/app/[locale]/(components)/(blocks)/info-block";
import CommisionBlock from "@/app/[locale]/(components)/(blocks)/comission-block";


const HomePage = () => {
    return (
        <Container >
            <InfoBlock/>
            <NewsBlock />
            <CommisionBlock/>
        </Container>

    )
}

export default HomePage;