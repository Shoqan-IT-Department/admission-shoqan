import Container from "@/shared/ui/wrappers/container";
import React from "react";
import { ADM_URL } from "@/config/instance";
import { ENDPOINTS } from "@/config/endpoints";
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from "@/shared/ui/card";
import { SyncLoader } from "react-spinners";
import Link from "next/link";
import { PATHS } from "@/config/paths";

type Article = {
    id: number;
    title: string;
    description: string;
    published: Date;
    subtitle?: string;
    img?: {
        url: string;
        name: string;
        caption: string;
        alternativeText: string;
        formats: {
            small: {
                url: string;
            };
        };
    };
    fullImageUrl?: string | null;
};

export const revalidate = 600;

export default async function NewsPage({ params }: { params: Promise<{ locale: string }> }) {
    const { locale } = await params;
    const fallbackLocale = "ru-RU";

    const localesToTry = [locale, fallbackLocale];
    let articles: Article[] = [];

    for (const loc of localesToTry) {
        try {
            const res = await ADM_URL.get<{ data: Article[] }>(
                `${ENDPOINTS.GET.NEWS_ARTICLE}&locale=${loc}`
            );

            articles = res.data.data.map((item) => ({
                ...item,
                fullImageUrl: item.img?.url
                    ? `${ADM_URL.defaults.baseURL}${item.img.url}`
                    : null,
            }));

            if (articles.length > 0) break;
        } catch (err) {
            console.error(`Ошибка при получении статей (${loc}):`, err);
        }
    }

    if (!articles.length) {
        return (
            <div className="p-6">
        <span className="pt-6 pb-6 flex justify-center items-center">
          <SyncLoader color="#1470B9FF" />
        </span>
            </div>
        );
    }

    return (
        <Container>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 pt-6 pb-6">
                {articles.map((article) => (
                    <div key={article.id}>
                        <Card className="flex flex-col rounded-4xl overflow-hidden h-full">
                            <Link
                                href={`${PATHS.NEWS}/${article.id}`}
                                className="flex flex-col"
                            >
                                {article.fullImageUrl && (
                                    <CardContent className="p-4 pt-1 flex justify-center items-center">
                                        <img
                                            src={article.fullImageUrl}
                                            alt={article.title}
                                            className="w-full object-cover aspect-[16/9] rounded-3xl"
                                        />
                                    </CardContent>
                                )}
                                <CardHeader className="px-4 pt-2">
                                    <CardTitle className="text-foreground text-center text-base sm:text-lg">
                                        {article.title}
                                    </CardTitle>
                                    <CardDescription className="text-sm sm:text-base text-justify">
                                        {article.description
                                                .split(" ")
                                                .slice(0, 30)
                                                .join(" ") +
                                            (article.description.split(" ").length > 30
                                                ? "..."
                                                : "")}
                                    </CardDescription>
                                </CardHeader>
                                <CardFooter className="text-text-background pt-2">
                                    <p className="text-right leading-7 [&:not(:first-child)]:mt-6">
                                        {(() => {
                                            const date = new Date(article.published);
                                            const day = date.getDate();
                                            const month = date.getMonth();
                                            const year = date.getFullYear();
                                            const months = [
                                                "января",
                                                "февраля",
                                                "марта",
                                                "апреля",
                                                "мая",
                                                "июня",
                                                "июля",
                                                "августа",
                                                "сентября",
                                                "октября",
                                                "ноября",
                                                "декабря",
                                            ];
                                            return `${day} ${months[month]} ${year}`;
                                        })()}
                                    </p>
                                </CardFooter>
                            </Link>
                        </Card>
                    </div>
                ))}
            </div>
        </Container>
    );
}

