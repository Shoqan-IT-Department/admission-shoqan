import {Link} from "@/i18n/navigation";
import {PATHS} from "@/config/paths";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import {ENDPOINTS} from "@/config/endpoints";
import {ADM_URL} from "@/config/instance";
import VideoComponent from "@/shared/ui/video";
import ChoiceCard from "@/app/[locale]/(components)/(cards)/choice-card";
import InfoCard from "@/app/[locale]/(components)/(cards)/info-card";
import { getTranslations } from 'next-intl/server';


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

      // <div>
      //     <div className="flex justify-between items-center w-full mt-5 select-none cursor-default leading-none font-semibold text-2xs">
      //       <div className="">
      //         <h2 className="scroll-m-20 text-3xl font-semibold tracking-tight">
      //           {title}
      //         </h2>
      //         <p className="leading-7 [&:not(:first-child)]:mt-6 whitespace-normal break-words">
      //           {description}
      //         </p>
      //       </div>
      //       <Link href={PATHS.EDU_PROGRAMS}>
      //         <div className='border rounded-lg flex items-center gap-4 p-2'>
      //           <span className="mr-2">Образовательные программы</span>
      //           <Button className="bg-popover hover:bg-muted"><ArrowRight /></Button>
      //         </div>
      //       </Link>
      //     </div>
      //     <div className="mt-10 rounded-md">
      //       {/* <Video width={"1980"} height={"1080"} /> */}
      //     </div>
      //     {/* <InfoCard />
      //     <ChoiceCard /> */}
      // </div>
  );
}


