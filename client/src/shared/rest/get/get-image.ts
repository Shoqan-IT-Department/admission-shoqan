import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { ImageResponse } from "@/shared/types/promise.type";

export async function getImage() {
  const res = await ADM_URL.get<{ data: ImageResponse[] }>(
    ENDPOINTS.GET.IMAGE,
    {
      params: { populate: "*" },
    },
  );
  return res?.data?.data;
}
