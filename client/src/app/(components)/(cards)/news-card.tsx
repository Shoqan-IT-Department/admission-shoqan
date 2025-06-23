// import React, {useEffect, useState} from 'react';
// import Image from "next/image";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import {Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle} from "@/shared/ui/card";
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

async function getNewsArticle() {
   try {
     const res = ADM_URL.get<{data: StaticArticleType[]}>(ENDPOINTS.GET.NEWS_ARTICLE) 
     const merge = (await res).data.data
     return merge.map((item) => ({
      ...item,
      fullImageUrl: item.img?.url ? `${ADM_URL.defaults.baseURL}${item.img.url}` : undefined,
    }));
   } catch (err) {
    console.error("Ошибка при получении статей:", err);
    return [];
   }
    
}

export const revalidate = 600;

export default async function NewsCard(){

     const articles = await getNewsArticle();

    if (!articles.length) {
   return <span className="pt-6 pb-6 flex justify-center items-center"><SyncLoader color="#1470B9FF" /></span>;
  }
    // const [articles, setArticles] = useState<Article[]>([]);
    // const [loading, setLoading] = useState(true);

    // useEffect(() => {
    //     ADM_URL.get(ENDPOINTS.GET.NEWS_ARTICLE)
    //         .then((res) => {
    //             // Конкатенация url для каждого изображения
    //             const mapped = res.data.data.map((item: any) => {
    //                 const fullImageUrl = item.img?.url
    //                     ? `${ADM_URL.defaults.baseURL}${item.img.url}`
    //                     : null;

    //                 return {
    //                     ...item,
    //                     fullImageUrl,
    //                 };
    //             });

    //             setArticles(mapped);
    //             setLoading(false);
    //         })
    //         .catch((err) => {
    //             console.error("Ошибка при получении статей:", err);
    //             setLoading(false);
    //         });
    // }, []);

    // if (loading) return <span className="pt-6 pb-6 flex justify-center items-center"><SyncLoader color="#1470B9FF" /></span>;

    return (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {articles.map((article) => (
                <Card
                    key={article.id}
                    className="flex flex-col rounded-4xl overflow-hidden"
                >
                    <Link href={PATHS.NEWS} className="flex flex-col">
                        {article.fullImageUrl && (
                            <CardContent className="p-4 pt-1 flex justify-center items-center">
                                <img
                                    src={article.fullImageUrl}
                                    alt={article.title}
                                    className="w-full object-cover aspect-[16/9] rounded-3xl"/>
                            </CardContent>
                        )}
                        <CardHeader className="px-4 pt-2">
                            <CardTitle className="text-foreground text-center text-base sm:text-lg">
                                {article.title}
                            </CardTitle>
                            <CardDescription className="text-center text-sm sm:text-base">

                            </CardDescription>
                        </CardHeader>
                        <CardFooter className="text-center text-xs text-text-background pb-4">
                            date 25 June 2025
                        </CardFooter>
                    </Link>
                </Card>
            ))}
        </div>

    );
};
