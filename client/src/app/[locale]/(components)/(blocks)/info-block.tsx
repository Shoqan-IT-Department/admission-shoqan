import Link from "next/link";
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

export default async function InfoBlock() {
  const t = await getTranslations('HomePage');
  const articles = await getArticles();
  const title = articles[0]?.title || '';
  const description = articles[0]?.description || '';

  return (
    <div >
  <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center w-full mt-5 select-none cursor-default leading-none font-semibold text-2xs gap-4">
    <div className="flex-1">
      <h2 className="scroll-m-20 text-2xl sm:text-3xl font-semibold tracking-tight">
        {t('infoblock.title')}
      </h2>
       <p className="leading-7 [&:not(:first-child)]:mt-6 whitespace-normal break-words">
    {t('infoblock.description')}</p>
    </div>

    <Link href={PATHS.EDU_PROGRAMS}>
      <div className="border rounded-lg flex items-center gap-2 p-2">
        <span className="text-sm">Образовательные программы</span>
        <Button className="bg-popover hover:bg-muted">
            <ArrowRight />
          </Button>
      </div>
    </Link>
  </div>

  <div className="mt-10 rounded-md">
     <VideoComponent />
  </div>
   <InfoCard/>
  <ChoiceCard />
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

