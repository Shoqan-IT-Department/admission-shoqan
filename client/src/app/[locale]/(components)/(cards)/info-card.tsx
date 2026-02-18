import { ADM_URL } from "@/config/instance";
import { ENDPOINTS } from "@/config/endpoints";

type InfoType = {
  id: number;
  title: string;
  description: string;
};

export const revalidate = 600;

async function getStaticInfo(locale: string = "ru-RU"): Promise<InfoType[]> {
  const localesToTry = [locale, "ru-RU"];

  for (const loc of localesToTry) {
    try {
      const res = await ADM_URL.get<{
        data: { block: InfoType; content: InfoType; item: InfoType }[];
      }>(`${ENDPOINTS.GET.STATIC_INFO}&locale=${loc}`);

      const rawData = res.data.data;

      if (rawData.length > 0) {
        return rawData.flatMap((item) => [item.block, item.content, item.item]);
      }
    } catch (err) {
      console.error(
        `Ошибка при получении статической информации (locale=${loc}):`,
        err,
      );
    }
  }

  return [];
}

type StaticInfoBlockProps = {
  locale: string;
};

export default async function StaticInfoBlock({
  locale,
}: StaticInfoBlockProps) {
  const contents = await getStaticInfo(locale);

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 select-none cursor-default leading-none font-semibold text-2xs mt-8">
      {contents.map((block, key) => (
        <div
          key={key}
          className="flex flex-col justify-center items-start bg-card p-6 rounded-4xl border"
        >
          <div>
            <h1 className="scroll-m-20 text-3xl tracking-tight text-chart-5 lg:text-5xl">
              {block.title}
            </h1>
            <p className="mt-20">{block.description}</p>
          </div>
        </div>
      ))}
    </div>
  );
}
