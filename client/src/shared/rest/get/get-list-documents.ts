import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { ListDocumentsType } from "@/shared/types/promise.type";

export async function getListDocuments() {
  const res = await ADM_URL.get<{ data: ListDocumentsType[] }>(
    ENDPOINTS.GET.LIST_DOCUMENTS,
  );

  return res.data?.data[0];
}
