

import { ADM_URL } from "@/config/instance";
import { notFound } from "next/navigation";
import Container from "@/shared/ui/wrappers/container";
import { ENDPOINTS } from "@/config/endpoints";
import ReactMarkdown from "react-markdown";

export const dynamic = "force-dynamic";

type Article = {
    id: number;
    title: string;
    published: Date;
    description: string;
    img?: {
        url: string;
    };
    subtitle: string;
};


export default async function ArticlePage({
                                              params,
                                          }: {
    params: Promise<{ newsId: string; locale: string }>;
}) {
    const { newsId, locale } = await params;

    try {
        const localesToTry = [locale, "ru-RU"];
        let article: Article | null = null;

        for (const loc of localesToTry) {
            const res = await ADM_URL.get<{ data: Article[] }>(
                `${ENDPOINTS.GET.NEWS_ARTICLE}&locale=${loc}`
            );

            const found = res.data.data.find((item) => item.id === Number(newsId));
            if (found) {
                article = found;
                break;
            }
        }

        if (!article) return notFound();

        return (
            <Container>
                <div className="p-6">
                    <div className="flex justify-center">
                         {article.img?.url && (
                        <img
                            src={`${ADM_URL.defaults.baseURL}${article.img.url}`}
                            alt={article.title}
                            className="rounded-xl max-w-full"
                        />
                    )}
                    </div>
                    <div className="mt-6 text-left">
                        <h1 className="text-2xl font-bold mb-4 text-center">{article.title}</h1>
                        <ReactMarkdown>
                                {article.subtitle}
                        </ReactMarkdown>
                    </div>
                    <div>
                        <h1 className="text-right text-xl font-bold">
                            {(() => {
                                const date = new Date(article.published);
                                const day = date.getDate();
                                const month = date.getMonth();
                                const year = date.getFullYear();
                                const months = [
                                    "января", "февраля", "марта", "апреля", "мая", "июня",
                                    "июля", "августа", "сентября", "октября", "ноября", "декабря",
                                ];
                                return `${day} ${months[month]} ${year}`;
                            })()}
                        </h1>
                    </div>
                </div>
            </Container>
        );
    } catch (error) {
        console.error("Ошибка при получении статьи:", error);
        return notFound();
    }
}
