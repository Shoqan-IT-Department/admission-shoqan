import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { InfoAdmissionsResponse } from "@/shared/types/promise.type";

export async function getInfoAdmission(locale: string) {
  const res = await ADM_URL.get<InfoAdmissionsResponse>(
    ENDPOINTS.GET.INFO_ADMISSION,
    { params: { populate: "*", locale } },
  );

  return res.data.data;
}
