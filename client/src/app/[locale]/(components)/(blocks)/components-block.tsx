import {ENDPOINTS} from "@/config/endpoints";
import {ADM_URL} from "@/config/instance";
import VideoComponent from "@/shared/ui/video";
import ChoiceCard from "@/app/[locale]/(components)/(cards)/choice-card";
import InfoCard from "@/app/[locale]/(components)/(cards)/info-card";

type StaticArticleType = {
  title: string;
  description: string;
}

async function getArticles(): Promise<StaticArticleType[]> {
  try {
    const res = await ADM_URL.get<{ data: StaticArticleType[] }>(ENDPOINTS.GET.STATIC_ARTICLE);
    return res.data.data;
  } catch (err) {
    console.error('Ошибка при получении статьи:', err);
    return [];
  }
}
export const revalidate = 600;

export default async function ComponentsBlock({ locale }: { locale: string }) {
  return (
      <div className="pt-6">
        <div className="mt-4 rounded-md">
          <VideoComponent />
        </div>
        <InfoCard locale={locale}/>
        <ChoiceCard locale={locale}/>
      </div>
  );
}


