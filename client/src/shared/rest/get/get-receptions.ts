import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { DeadlineType } from "@/shared/types/promise.type";

export async function getReceptions(locale: string) {
  const res = await ADM_URL.get<{ data: DeadlineType[] }>(
    ENDPOINTS.GET.RECEPTIONS,
    { params: { locale } },
  );

  return res.data?.data[0];
}
