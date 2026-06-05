import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { ErrorsType } from "@/shared/types/promise.type";

export async function getErrors(locale: string) {
  const res = await ADM_URL.get<{ data: ErrorsType[] }>(ENDPOINTS.GET.ERROR, {
    params: { locale },
  });
  return res.data?.data[0];
}
