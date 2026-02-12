import { PATHS } from "@/config/paths";
import { Button } from "@/shared/ui/button";
import { ArrowRight } from "lucide-react";
import { ADM_URL } from "@/config/instance";
import { ENDPOINTS } from "@/config/endpoints";
import NewsCard from "@/app/[locale]/(components)/(cards)/news-card";
import { getTranslations } from "next-intl/server";
import { Link } from "@/i18n/navigation";

type StaticAttributesType = {
  title: string;
  subtitle: string;
};

export const revalidate = 600;

export default async function NewsBlock({ locale }: { locale: string }) {
  const t = await getTranslations("HomePage");
  return (
    <div id="news" className="select-none cursor-default pb-5">
      <div>
        <Link href={PATHS.NEWS}>
          <div className="flex justify-between items-center my-8 rounded-4x">
            <div>
              <h1 className="text-4xl font-semibold tracking-tight text-primary">
                {t("newsblock.title")}
              </h1>
            </div>
          </div>
        </Link>
        <div className="">
          <NewsCard locale={locale} />
        </div>
      </div>
    </div>
  );
}
