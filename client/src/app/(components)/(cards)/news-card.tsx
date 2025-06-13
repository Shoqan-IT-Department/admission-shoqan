import React, {useEffect, useState} from 'react';
// import Image from "next/image";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import {Card, CardAction, CardContent, CardDescription, CardFooter, CardHeader, CardTitle} from "@/shared/ui/card";
import {SyncLoader} from "react-spinners";
import Link from "next/link";
import {PATHS} from "@/config/paths";

type StaticArticleType = {
    id: number;
    title: string;
    description: string;
    img: {
        url: string;
        name: string;
        caption: string;
        alternativeText: string;
        formats: {
            small: {
                url: string;
            };
        }
    };
};

type Article = {
    id: number;
    title: string;
    description: string;
    imageUrl: string | null;
    subtitle?: string;
    img?: {
        hash: string;
        ext: string;
    };
    fullImageUrl?: string | null;
};

const NewsCard = () => {
    const [articles, setArticles] = useState<Article[]>([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        ADM_URL.get(ENDPOINTS.GET.NEWS_ARTICLE)
            .then((res) => {
                // Конкатенация url для каждого изображения
                const mapped = res.data.data.map((item: any) => {
                    const fullImageUrl = item.img?.url
                        ? `${ADM_URL.defaults.baseURL}${item.img.url}`
                        : null;

                    return {
                        ...item,
                        fullImageUrl,
                    };
                });

                setArticles(mapped);
                setLoading(false);
            })
            .catch((err) => {
                console.error("Ошибка при получении статей:", err);
                setLoading(false);
            });
    }, []);

    if (loading) return <span className="pt-6 pb-6 flex justify-center items-center"><SyncLoader color="#1470B9FF" /></span>;

    return (
        <div className="grid grid-cols-3 gap-4">
            {articles.map((article) => (
                    <Card key={article.id} className="flex justify-center">
                        <Link href={PATHS.NEWS}>
                        <CardContent className="flex justify-center">
                            {article.fullImageUrl && (
                                <img
                                    src={article.fullImageUrl}
                                    alt={article.title}
                                    className="rounded-xl"
                                    style={{ width: '450px', height: 'auto' }}
                                />
                            )}
                        </CardContent>
                        <CardHeader>
                            <CardTitle className="text-foreground text-center">{article.title}</CardTitle>
                            <CardDescription className="text-center">{article.description}</CardDescription>
                        </CardHeader>
                        <CardFooter>date 25 June 2025</CardFooter>
                        </Link>
                    </Card>
            ))}
        </div>
    );
};

export default NewsCard;