

import Link from "next/link";
import {PATHS} from "@/config/paths";
import {Button} from "@/shared/ui/button";
import {ArrowRight} from "lucide-react";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import NewsCard from "@/app/[locale]/(components)/(cards)/news-card";


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

export default async function NewsBlock() {

    const attributes = await getStaticAttributes()

    // const [attributes, setAttributes] = useState<StaticAttributesType[]>([]);

    // useEffect(() => {
    //     ADM_URL
    //         .get<{ data: StaticAttributesType[] }>(ENDPOINTS.GET.STATIC_ATTRIBUTES)
    //         .then((res) =>setAttributes(res.data.data))
    //         .catch((err) => console.error('Ошибка при получении статей:', err));

    // }, []);

    const title = attributes[0]?.title || '';
    const subtitle = attributes[0]?.subtitle || '';


    return (
        <div id="news" className="select-none cursor-default">
            <div>
                <div className="flex justify-between items-center mt-6 pb-4 rounded-4x">
                    <div>
                         <h1 className="scroll-m-20 text-3xl font-semibold tracking-tight ">
                        {title || ''}
                    </h1>
                    </div>
                    <Link href={PATHS.NEWS}>
                        <div className="flex p-2 rounded-lg gap-4 items-center border">
                            <p className="pr-10">{subtitle || ''}</p>
                            <Button className="bg-popover hover:bg-muted "><ArrowRight /></Button>
                        </div>
                    </Link>
                </div>
                <div className="flex flex-wrap gap-3 mt-2">
                        <Button className="text-secondary hover:bg-ring rounded-lg px-4 py-2">
                            {subtitle || ''}
                        </Button>
                </div>
                <div className="mt-10">
                    <NewsCard/>
                </div>
                {/*<div className="mt-10">*/}
                {/*    <ComissionCard/>*/}
                {/*</div>*/}
            </div>
        </div>
    );
};
