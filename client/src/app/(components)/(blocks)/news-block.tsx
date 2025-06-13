'use client'

import React, {useState,useEffect} from 'react';
import Link from "next/link";
import {PATHS} from "@/config/paths";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import NewsCard from "@/app/(components)/(cards)/news-card";
import ComissionCard from "@/app/(components)/(cards)/comission-card";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";


type StaticAttributesType = {
    title: string;
    subtitle: string;
}

const NewsBlock = () => {

    const [attributes, setAttributes] = useState<StaticAttributesType[]>([]);

    useEffect(() => {
        ADM_URL
            .get<{ data: StaticAttributesType[] }>(ENDPOINTS.GET.STATIC_ATTRIBUTES)
            .then((res) =>setAttributes(res.data.data))
            .catch((err) => console.error('Ошибка при получении статей:', err));

    }, []);

    const title = attributes[0]?.title || '';
    const subtitle = attributes[0]?.subtitle || '';


    return (
        <div className="select-none cursor-default ">
            <div>
                <div className="flex justify-between items-center mt-6 border-b-2 border-popover pb-4 ">
                    <h1 className="scroll-m-20 text-3xl font-semibold tracking-tight  ">
                        {title}
                    </h1>
                    <Link href={PATHS.NEWS}>
                        <div className="flex p-2 rounded-lg gap-4 items-center border">
                            <p className="pr-10">{subtitle}</p>
                            <Button className="bg-popover hover:bg-muted "><ArrowRight /></Button>
                        </div>
                    </Link>
                </div>
                <div className="flex flex-wrap gap-3 mt-6">
                    {attributes.map((item, key) => (
                        <Button
                            key={key}
                            className="text-secondary hover:bg-ring rounded-lg px-4 py-2"
                        >
                            {item.subtitle}
                        </Button>
                    ))}
                </div>
                <div>
                    <NewsCard/>
                </div>
            </div>
        </div>
    );
};

export default NewsBlock;