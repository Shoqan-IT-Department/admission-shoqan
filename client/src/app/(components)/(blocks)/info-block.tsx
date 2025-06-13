'use client'

import React, {Suspense, useEffect, useState} from 'react';
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import Container from "@/shared/ui/wrappers/container";
import InfoCard from "@/app/(components)/(cards)/info-card";
import ChoiceCard from "@/app/(components)/(cards)/choice-card";
import Link from "next/link";
import {PATHS} from "@/config/paths";
import Video from "@/widgets/video-player/video";
import {ENDPOINTS} from "@/config/endpoints";
import {ADM_URL} from "@/config/instance";
import axios from "axios";


type StaticArticleType = {
    title: string,
    description: string,
}



const InfoBlock = () => {


    const [articles, setArticles] = useState<StaticArticleType[]>([]);

    // useEffect(() => {
    //     const fetchArticles = async () => {
    //         try {
    //             const response = await ADM_URL.get<{ data: StaticArticle[] }>(ENDPOINTS.GET.STATIC_ARTICLE);
    //             setArticles(response.data.data);
    //         } catch (error) {
    //             console.error('Ошибка при получении статей:', error);
    //         }
    //     };
    //
    //     fetchArticles();
    // }, []);


    useEffect(() => {
        ADM_URL
            .get<{ data: StaticArticleType[] }>(ENDPOINTS.GET.STATIC_ARTICLE)
            .then((res) =>setArticles(res.data.data))
            .catch((err) => console.error('Ошибка при получении статей:', err));

    }, []);

    const title = articles[0]?.title || '';
    const description = articles[0]?.description || '';


    return (
        <div>
            <Container>
                <div className="flex justify-between items-center w-full mt-5 select-none cursor-default leading-none font-semibold text-2xs">
                    <div className="pr-4">
                        <h2 className="scroll-m-20 text-3xl font-semibold tracking-tight">
                            {title}
                        </h2>
                        <p className="leading-7 [&:not(:first-child)]:mt-6 whitespace-normal break-words">
                            {description}
                        </p>
                    </div>
                    <Link href={PATHS.EDU_PROGRAMS}>
                    <div className='border rounded-lg flex items-center gap-4 p-2'>
                        <span className="mr-2">
                            Образовательные программы
                        </span>
                        <Button className="bg-popover hover:bg-muted"><ArrowRight /></Button>
                    </div>
                    </Link>
                </div>
                <div className="mt-10 rounded-md">
                    <Video width={"1980"} height={"1080"}></Video>
                </div>
                <div>
                    <InfoCard/>
                </div>
                <div>
                    <ChoiceCard/>
                </div>
            </Container>
        </div>
    );
};

export default InfoBlock;