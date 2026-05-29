import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { ListDocumentsType } from "@/shared/types/promise.type";

export async function getListDocuments(locale: string) {
  const res = await ADM_URL.get<{ data: ListDocumentsType[] }>(
    ENDPOINTS.GET.LIST_DOCUMENTS,
    { params: { locale } },
  );

  return res.data?.data[0];
}
