import { ADM_URL } from "@/config/instance";
import { notFound } from "next/navigation";
import Container from "@/shared/ui/wrappers/container";
import {ENDPOINTS} from "@/config/endpoints";

type Article = {
    id: number;
    title: string;
    description: string;
    img?: {
        url: string;
    };
};

export default async function ArticlePage({ params }: { params: { newsId: string } }) {
    const { newsId } = params;

    try {
        const res = await ADM_URL.get(ENDPOINTS.GET.NEWS_ARTICLE);
        const articles: Article[] = res.data.data;

        const article = articles.find((item) => item.id === Number(newsId));

        if (!article) {
            return notFound();
        }

        return (
            <Container>
                <div className="p-6">
                    {article.img?.url && (
                        <img
                            src={`${ADM_URL.defaults.baseURL}${article.img.url}`}
                            alt={article.title}
                            className="rounded-xl max-w-full"
                        />
                    )}
                    <h1 className="text-2xl font-bold mb-4">{article.title}</h1>
                    <p className="mb-4">{article.description}</p>
                </div>
            </Container>
        );
    } catch (error) {
        console.error("Ошибка при получении статьи:", error);
        return notFound();
    }
}
