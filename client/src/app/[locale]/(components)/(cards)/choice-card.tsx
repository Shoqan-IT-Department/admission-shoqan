
import {ArrowRight} from "lucide-react";
import {Button} from "@/shared/ui/button";
import Link from "next/link";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import { getTranslations } from "next-intl/server";
import {getPaths} from "@/config/paths";


type StaticProgrammType = {
    title: string
    more: string
}

async function getStaticAttributes({ locale }: { locale: string }) {
    try {
        const res = await ADM_URL.get<{data:StaticProgrammType[] }>(ENDPOINTS.GET.STATIC_ATTRIBUTES)
        return  res.data.data
    } catch (err) {
    console.error('Ошибка при получении:', err);
    return [];
  }
}

async function getStaticProfession() {
    try {
        const res = await ADM_URL.get<{data:StaticProgrammType[] }>(ENDPOINTS.GET.STATIC_PROGRAMMS)
        return res.data.data
    } catch (err) {
    console.error('Ошибка при получении:', err);
    return [];
  }
}
export const revalidate = 600;

export default async function ChoiceCard ({ locale }: { locale: string }) {
    const PATHS = getPaths(locale);
  const t = await getTranslations('HomePage')
    const contents = await getStaticProfession()




    // const [contents, setContents] = useState<StaticProgrammType[]>([]);

    // useEffect(() => {
    //     ADM_URL
    //         .get<{ data: StaticProgrammType[] }>(ENDPOINTS.GET.STATIC_PROGRAMMS)
    //         .then((res) =>setContents(res.data.data))
    //         .catch((err) => console.error('Ошибка при получении статей:', err));

    // }, []);

    // const baccalaureate = contents[0]?.baccalaureate || '';
    // const magistracy = contents[0]?.magistracy || '';
    // const postgraduate = contents[0]?.postgraduate || '';
    // const more = contents[0]?.more || '';

    return (
     <div id="choice">
  <h1 className="scroll-m-20 text-3xl font-semibold tracking-tight mt-6">
    {t("choiceblock.title")}
  </h1>

  <div className="cursor-default mt-10">
    <Link href={PATHS.EDU_PROGRAMS}>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {contents.map((item, key) => (
          <div
            key={key}
            className="bg-card h-[268px] rounded-4xl p-4 sm:p-6 flex flex-col justify-between  hover:bg-gradient-to-br hover:from-[#0E468B] hover:via-[#1370B9] hover:to-[#1370B9] transition-all hover:text-white duration-700"
          >
            <h1 className="text-4xl sm:text-2xl lg:text-3xl font-semibold tracking-tight mb-10">
              {item.title}
            </h1>

            <div className="mt-6 flex flex-col sm:flex-row sm:items-center gap-4 ">
                 <div>{item.more}</div>
              <Button className="bg-popover hover:bg-muted border w-max">
                <ArrowRight />
              </Button>
            </div>
          </div>
        ))}
      </div>
    </Link>
  </div>
</div>



    );
};


