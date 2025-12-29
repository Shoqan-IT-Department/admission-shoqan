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
import { Link } from "@/i18n/navigation";
import { PATHS } from "@/config/paths";
import { getTranslations } from "next-intl/server";
import type { Metadata, ResolvingMetadata } from "next";
import { getMetaTags } from "@/shared/helpers/get-meta-tags";
import { PageLocaleParamsType } from "@/shared/types/params.type";
import { META_INFO } from "@/shared/constants/meta/meta-info";

type PageProps = {
  params: Promise<PageLocaleParamsType>;
};

type Article = {
  id: number;
  title?: string;
  description?: string;
  published?: Date | string;
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

export async function generateMetadata(
  { params }: PageProps,
  parent: ResolvingMetadata
): Promise<Metadata> {
  const { locale } = await params;
  const title = META_INFO.news.title[locale];
  const description = META_INFO.news.description[locale];
  const tags = META_INFO.news.keywords[locale];
  const actualImages: string[] = [META_INFO.cover[locale]];
  const previousImages = (await parent).openGraph?.images || [];
  return getMetaTags({
    title,
    description,
    tags,

    pathname: PATHS.EDU_PROGRAMS,
    images: [...actualImages, ...previousImages],
    locale,
  });
}

export const revalidate = 600;

export default async function NewsPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  const t = await getTranslations("NewsPage");
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
    <Container className="min-h-[700px]">
      <div>
        <h1 className="scroll-m-20 pt-6 text-4xl font-bold tracking-tight text-balance mb-5">
          {t("title")}
        </h1>
      </div>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 pt-6 pb-6 items-start">
        {articles.map((article) => (
          <div key={article.id}>
            <Card className="flex flex-col rounded-4xl overflow-hidden">
              <Link
                href={`${PATHS.NEWS}/${article.id}`}
                className="flex flex-col whitespace-pre-wrap"
              >
                {article.fullImageUrl && (
                  <CardContent className="p-4 pt-1 flex justify-center items-center">
                    <img
                      src={article.fullImageUrl}
                      alt={article.title ?? "Изображение"}
                      className="w-full object-cover aspect-[16/9] rounded-3xl"
                    />
                  </CardContent>
                )}
                <CardHeader className="px-4 pt-2">
                  <CardTitle className="text-foreground text-center text-base sm:text-lg">
                    {(article.title || "").split(" ").slice(0, 10).join(" ") +
                      ((article.title || "").split(" ").length > 10
                        ? "..."
                        : "")}
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
                          const date = new Date(article.published!);
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
