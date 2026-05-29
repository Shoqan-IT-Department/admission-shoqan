import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { HeadType } from "@/shared/types/promise.type";

export async function getHeads() {
  const res = await ADM_URL.get<{ data: HeadType[] }>(ENDPOINTS.GET.HEAD);
  return res.data?.data;
}
