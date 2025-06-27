
import { ADM_URL } from '@/config/instance';
import { ENDPOINTS } from '@/config/endpoints';

type InfoType = {
  id: number;
  title: string;
  description: string;
};

export const revalidate = 600;

async function getStaticInfo(): Promise<InfoType[]> {
  try {
    const res = await ADM_URL.get<{
      data: { block: InfoType; content: InfoType; item: InfoType }[];
    }>(ENDPOINTS.GET.STATIC_INFO);

    const rawData = res.data.data;

    return rawData.flatMap((item) => [item.block, item.content, item.item]);
  } catch (err) {
    console.error('Ошибка при получении данных:', err);
    return [];
  }
}

export default async function StaticInfoBlock() {
  const contents = await getStaticInfo();

  return (
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 mt-10 select-none cursor-default leading-none font-semibold text-2xs">
        {contents.map((block, key) => (
            <div
                key={key}
                className="flex flex-col justify-center items-start bg-card p-6 rounded-4xl"
            >
              <h1 className="scroll-m-20 text-3xl tracking-tight text-chart-5 lg:text-5xl">
                {block.title}
              </h1>
              <p className="mt-20">{block.description}</p>
            </div>
        ))}
      </div>

  );
}
