import React, {useEffect, useState} from 'react';
import Container from "@/shared/ui/wrappers/container";
import {ArrowRight} from "lucide-react";
import {Button} from "@/shared/ui/button";
import Link from "next/link";
import {PATHS} from "@/config/paths";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";


type StaticProgrammType = {
    title: string
    more: string
}

const ChoiceCard = () => {

    const [contents, setContents] = useState<StaticProgrammType[]>([]);

    useEffect(() => {
        ADM_URL
            .get<{ data: StaticProgrammType[] }>(ENDPOINTS.GET.STATIC_PROGRAMMS)
            .then((res) =>setContents(res.data.data))
            .catch((err) => console.error('Ошибка при получении статей:', err));

    }, []);

    // const baccalaureate = contents[0]?.baccalaureate || '';
    // const magistracy = contents[0]?.magistracy || '';
    // const postgraduate = contents[0]?.postgraduate || '';
    // const more = contents[0]?.more || '';

    return (
        <div className="select-none cursor-default">
            <Link href={PATHS.EDU_PROGRAMS}>
                <div className="grid grid-cols-3 gap-4 mt-10">
                    {contents.map((item, key) => (
                        <div key={key} className="flex bg-card flex-col justify-center items-left  p-6 rounded-4xl">

                            <h1 className="scroll-m-20 text-3xl  tracking-tight">
                                {item.title}
                            </h1>
                            <div className="mt-20 items-center flex ">{item.more}<Button className="bg-popover hover:bg-muted ml-4"><ArrowRight /></Button></div>
                        </div>
                    ))}
                </div>

            </Link>
        </div>
    );
};

export default ChoiceCard;