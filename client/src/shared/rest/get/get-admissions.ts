import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { AdmissionType } from "@/shared/types/promise.type";

export async function getAdmission(locale: string) {
  const res = await ADM_URL.get<{ data: AdmissionType[] }>(
    ENDPOINTS.GET.ADMISSION,
    { params: { locale } },
  );
  return res.data?.data;
}
