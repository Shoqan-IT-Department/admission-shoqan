import { ENDPOINTS } from "@/config/endpoints";
import { ContactsType } from "./../../types/promise.type";
import { ADM_URL } from "@/config/instance";

export async function getContacts(locale: string) {
  const res = await ADM_URL.get<{ data: ContactsType[] }>(
    ENDPOINTS.GET.CONTACTS,
    { params: { locale } },
  );
  return res.data?.data[0];
}
