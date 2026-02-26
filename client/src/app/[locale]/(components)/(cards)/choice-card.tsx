import { ArrowRight } from "lucide-react";
import { Button } from "@/shared/ui/button";
import { PATHS } from "@/config/paths";
import { ADM_URL } from "@/config/instance";
import { ENDPOINTS } from "@/config/endpoints";
import { getTranslations } from "next-intl/server";
import { Link } from "@/i18n/navigation";
type StaticProgrammType = {
  title: string;
  more: string;
};

type StaticProgramBlockProps = {
  locale: string;
};

async function getStaticAttributes() {
  try {
    const res = await ADM_URL.get<{ data: StaticProgrammType[] }>(
      ENDPOINTS.GET.STATIC_ATTRIBUTES,
    );
    return res.data.data;
  } catch (err) {
    console.error("Ошибка при получении:", err);
    return [];
  }
}
function mapLocaleToApi(locale: string): string {
  const localeMap: Record<string, string> = {
    ru: "ru-RU",
    en: "en",
    kk: "kk",
  };

  return localeMap[locale] || "ru-RU"; // fallback на русский
}

async function getStaticProfession(locale: string = "ru") {
  const apiLocale = mapLocaleToApi(locale);
  try {
    const res = await ADM_URL.get<{ data: StaticProgrammType[] }>(
      `${ENDPOINTS.GET.STATIC_PROGRAMMS}?locale=${apiLocale}`,
    );
    return res.data.data;
  } catch (err) {
    console.error("Ошибка при получении программ:", err);
    return [];
  }
}
export const revalidate = 600;

export default async function ChoiceCard({ locale }: StaticProgramBlockProps) {
  const t = await getTranslations("HomePage");
  const contents = await getStaticProfession(locale);
  const attributes = await getStaticAttributes();
  return (
    <div id="choice">
      <h1 className="text-4xl font-semibold text-primary my-8">
        {t("choiceblock.title")}
      </h1>

      <div className="cursor-default">
        <Link href={PATHS.EDU_PROGRAMS}>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {contents.map((item, key) => (
              <div
                key={key}
                className="bg-card h-[268px] rounded-4xl border p-4 sm:p-6 flex flex-col justify-between hover:shadow-2xl transition duration-300"
              >
                <h1 className="text-4xl sm:text-2xl lg:text-3xl font-semibold tracking-tight mb-10 text-primary">
                  {item.title}
                </h1>

                <div className="mt-6 flex flex-col sm:flex-row sm:items-center gap-2">
                  <div>{item.more}</div>
                  <ArrowRight />
                </div>
              </div>
            ))}
          </div>
        </Link>
      </div>
    </div>
  );
}
