

import {useEffect, useState} from "react";
import {ENDPOINTS} from "@/config/endpoints";
import {ADM_URL} from "@/config/instance";




type InfoType = {
    id: number;
    title: string;
    description: string;
};

type ApiResponse = {
    data: {
        block: InfoType;
        item: InfoType;
        content: InfoType;
    }[];
};


const InfoCard = () => {





        const [contents, setContents] = useState<InfoType[]>([]);

        useEffect(() => {
            ADM_URL
                .get<{ data: { block: InfoType; content: InfoType; item: InfoType }[] }>(ENDPOINTS.GET.STATIC_INFO)
                .then((res) => {
                    const rawData = res.data.data;
                    // Вытаскиваем все блоки в один массив
                    const merged: InfoType[] = rawData.flatMap((item) => [
                        item.block,
                        item.content,
                        item.item
                    ]);

                    setContents(merged);
                })
                .catch((err) => console.error('Ошибка при получении данных:', err));
        }, []);

        return (
        <div className="grid grid-cols-3 gap-4 mt-10 select-none cursor-default leading-none font-semibold text-2xs">
            {contents.map((block, key) => (
                <div key={key} className="flex flex-col justify-center items-left bg-card p-6 rounded-4xl">
                    <h1 className="scroll-m-20 text-3xl tracking-tight text-chart-5 lg:text-5xl">
                        {block.title}
                    </h1>
                    <p className="mt-20">{block.description}</p>
                </div>
            ))}
        </div>

    );
};

export default InfoCard;