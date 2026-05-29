import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { DocsType } from "@/shared/types/promise.type";

export async function getDocs() {
  const res = await ADM_URL.get<{ data: DocsType[] }>(ENDPOINTS.GET.DOCS);
  return res.data?.data;
}
