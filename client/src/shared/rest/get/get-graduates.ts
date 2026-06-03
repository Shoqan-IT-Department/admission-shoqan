import { ADM_URL } from "@/config/instance";
import { ENDPOINTS } from "@/config/endpoints";
import { GraduateType } from "@/shared/types/promise.type";

export async function getGraduates(locale: string) {
  const res = await ADM_URL.get<{ data: GraduateType[] }>(
    ENDPOINTS.GET.GRADUATES,
    { params: { locale } },
  );
  return res.data.data;
}


