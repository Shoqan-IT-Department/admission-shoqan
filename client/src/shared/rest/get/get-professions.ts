import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { ProfessionType } from "@/shared/types/promise.type";

// запрос
export async function getProfessions(filters: {
  locale: string;
  graduates?: string[];
  page?: number;
}) {
  const params = new URLSearchParams();
  params.set("locale", filters.locale);
  params.set("pagination[page]", String(filters.page ?? 1));
  params.set("pagination[pageSize]", "5");

  if (filters.graduates?.length) {
    filters.graduates.forEach((g, i) => {
      params.set(`filters[graduates][$in][${i}]`, g);
    });
  }

  const res = await ADM_URL.get<{
    data: ProfessionType[];
    meta: { pagination: { total: number; pageCount: number } };
  }>(`${ENDPOINTS.GET.PROFESSIONS}?${params.toString()}`);

  return res.data;
}
