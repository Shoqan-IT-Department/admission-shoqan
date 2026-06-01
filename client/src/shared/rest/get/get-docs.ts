import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { DocsType } from "@/shared/types/promise.type";

export async function getDocs(locale: string) {
  const res = await ADM_URL.get<{ data: DocsType[] }>(ENDPOINTS.GET.DOCS, {
    params: { locale },
  });
  return res.data?.data;
}
