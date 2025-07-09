


import {PATHS} from "@/config/paths";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import NewsCard from "@/app/[locale]/(components)/(cards)/news-card";
import { getTranslations } from "next-intl/server";
import {Link} from "@/i18n/navigation";


type StaticAttributesType = {
    title: string;
    subtitle: string;
}
async function getStaticAttributes() {
    try {
        const res = ADM_URL.get<{data:StaticAttributesType[] }>(ENDPOINTS.GET.STATIC_ATTRIBUTES)
        return (await res).data.data
    } catch (err) {
        console.error('Ошибка при получении:', err);
        return [];
    }
}

export const revalidate = 600;

export default async function NewsBlock({ locale }: { locale: string }) {
    const t = await getTranslations("HomePage")
    const attributes = await getStaticAttributes()

    // const [attributes, setAttributes] = useState<StaticAttributesType[]>([]);

    // useEffect(() => {
    //     ADM_URL
    //         .get<{ data: StaticAttributesType[] }>(ENDPOINTS.GET.STATIC_ATTRIBUTES)
    //         .then((res) =>setAttributes(res.data.data))
    //         .catch((err) => console.error('Ошибка при получении статей:', err));

    // }, []);




    return (
        <div id="news" className="select-none cursor-default">
            <div>
                 <Link href={PATHS.NEWS}>
                <div className="flex justify-between items-center mt-6 pb-4 rounded-4x">
                    <div>
                        <h1 className="scroll-m-20 text-3xl font-semibold tracking-tight ">
                            {t("newsblock.title")}
                        </h1>
                    </div>
                        <div className="flex p-2 gap-4 items-center">
                            <Button className="bg-popover hover:bg-muted transition-transform duration-300 ease-in-out hover:scale-110 hover:rotate-60"><ArrowRight /></Button>
                        </div>
                        
                </div>
                </Link>
                <div className="flex flex-wrap gap-3 mt-2">
                    <Button className="text-secondary hover:bg-ring rounded-lg px-4 py-2">
                        {t("newsblock.subtitle")}
                    </Button>
                </div>
                <div className="mt-10">
                    <NewsCard locale={locale}/>
                </div>
                {/*<div className="mt-10">*/}
                {/*    <ComissionCard/>*/}
                {/*</div>*/}
            </div>
        </div>
    );
};

