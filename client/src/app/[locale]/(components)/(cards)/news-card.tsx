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
import { PATHS } from "@/config/paths";
import { Link } from "@/i18n/navigation";
import { getTranslations } from "next-intl/server";

type StaticArticleType = {
  id: number;
  title: string;
  description: string;
  published: Date;
  img: {
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
};
type ArticleWithImage = StaticArticleType & {
  fullImageUrl?: string;
};

export async function getNewsArticle(
  locale: string = "ru-RU",
): Promise<ArticleWithImage[]> {
  const localesToTry = [locale, "ru-RU"];

  for (const loc of localesToTry) {
    try {
      const res = await ADM_URL.get<{ data: StaticArticleType[] }>(
        `${ENDPOINTS.GET.NEWS_ARTICLE}&locale=${loc}`,
      );

      const articles = res.data.data;

      if (articles.length > 0) {
        return articles.map((item) => ({
          ...item,
          fullImageUrl: item.img?.url
            ? `${ADM_URL.defaults.baseURL}${item.img.url}`
            : undefined,
        }));
      }
    } catch (err) {
      console.error(`Ошибка при получении статей (locale=${loc}):`, err);
    }
  }

  return [];
}

export const revalidate = 600;

export default async function NewsCard({ locale }: { locale: string }) {
  const articles = await getNewsArticle(locale);
  const t = await getTranslations("NewsPage");
  if (!articles.length) {
    return (
      <span className="pt-6 pb-6 flex justify-center items-center">
        <SyncLoader color="#1470B9FF" />
      </span>
    );
  }
  if (!articles) {
    console.error("Нет заголовка у статьи:", articles);
    return null;
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 items-start">
      {articles.slice(0, 3).map((article) => (
        <div key={article.id}>
          <Card className="flex flex-col rounded-4xl overflow-hidden hover:shadow-xl hover:transition hover:duration-700 hover:ease-in-out">
            <Link href={PATHS.NEWS} className="flex flex-col">
              {article.fullImageUrl && (
                <CardContent className="p-4 pt-1 flex justify-center items-center">
                  <img
                    src={article.fullImageUrl}
                    alt={article.title ?? "NOT FOUND"}
                    className="w-full object-cover aspect-[16/9] rounded-3xl"
                  />
                </CardContent>
              )}
              <CardHeader className="px-4 pt-2">
                <CardTitle className="text-foreground text-center text-base sm:text-lg">
                  {(article.title || "").split(" ").slice(0, 10).join(" ") +
                    ((article.title || "").split(" ").length > 10 ? "..." : "")}
                </CardTitle>
                <CardDescription className="text-sm sm:text-base text-justify">
                  {(article.description || "")
                    .split(" ")
                    .slice(0, 30)
                    .join(" ") +
                    ((article.description || "").split(" ").length > 30
                      ? "..."
                      : "")}
                </CardDescription>
              </CardHeader>
              <CardFooter className="text-text-background pt-2">
                <p className="text-right text-xl font-bold">
                  {article.published
                    ? (() => {
                        const date = new Date(article.published);
                        const day = date.getDate();
                        const month = date.getMonth();
                        const year = date.getFullYear();
                        const months: string[] = Array.from(
                          { length: 12 },
                          (_, i) => t(`monthly.${i}`),
                        );
                        return `${day} ${months[month]} ${year}`;
                      })()
                    : ""}
                </p>
              </CardFooter>
            </Link>
          </Card>
        </div>
      ))}
    </div>
  );
}
