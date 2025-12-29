import { ADM_URL } from "@/config/instance";
import { notFound } from "next/navigation";
import Container from "@/shared/ui/wrappers/container";
import { ENDPOINTS } from "@/config/endpoints";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import { getTranslations } from "next-intl/server";

export const dynamic = "force-dynamic";

type Article = {
  id: number;
  title: string;
  published: Date | string | null;
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
    const formatRichTextToMarkdown = (text: string) => {
      return text
        .replace(/^(\d+)\)\s+/gm, "$1. ")
        .replace(/([^\n])\n(\d+\.\s)/g, "$1\n\n$2")
        .replace(/([^\n])\n(-\s)/g, "$1\n\n$2")
        .replace(/\n{3,}/g, "\n\n")
        .replace(/^\s+/gm, "")
        .replace(/\r/g, "");
    };
    const t = await getTranslations("NewsPage");
    return (
      <Container>
        <div className="p-6 min-h-[1000px]">
          {/* Картинка */}
          <div className="flex justify-center">
            {article.img?.url ? (
              <img
                src={`${ADM_URL.defaults.baseURL}${article.img.url}`}
                alt={article.title || "Изображение"}
                className="rounded-xl max-w-full"
              />
            ) : null}
          </div>
          <div className="mt-6 text-left">
            <h1 className="text-2xl font-bold mb-4 text-center">
              {article.title || ""}
            </h1>

            <div className="prose prose-lg max-w-none dark:prose-invert">
              <ReactMarkdown remarkPlugins={[remarkGfm]}>
                {formatRichTextToMarkdown(article.subtitle || "")}
              </ReactMarkdown>
            </div>
          </div>
          <div>
            <h1 className="text-right text-xl font-bold">
              {article.published
                ? (() => {
                    const date = new Date(article.published);
                    if (isNaN(date.getTime())) return "";
                    const day = date.getDate();
                    const month = date.getMonth();
                    const year = date.getFullYear();
                    const months: string[] = Array.from(
                      { length: 12 },
                      (_, i) => t(`monthly.${i}`)
                    );
                    return `${day} ${months[month]} ${year}`;
                  })()
                : ""}
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
