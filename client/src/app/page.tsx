import Container from "@/shared/ui/wrappers/container";
import InfoBlock from "@/app/(components)/(blocks)/info-block";
import NewsBlock from "@/app/(components)/(blocks)/news-block";
import RoadBlock from "@/app/(components)/(blocks)/road-block";
import ComissionCard from "@/app/(components)/(cards)/comission-card";
import React from "react";
const HomePage = () => {
    return (
        <Container >
            {/*<RoadBlock />*/}
            <InfoBlock />
            <NewsBlock />
        </Container>

    )
}

export default HomePage;