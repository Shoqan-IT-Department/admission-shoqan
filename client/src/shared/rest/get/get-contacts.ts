import { ENDPOINTS } from "@/config/endpoints";
import { ContactsType } from "./../../types/promise.type";
import { ADM_URL } from "@/config/instance";

export async function getContacts() {
  const res = await ADM_URL.get<{ data: ContactsType[] }>(
    ENDPOINTS.GET.CONTACTS,
  );
  return res.data?.data[0];
}
