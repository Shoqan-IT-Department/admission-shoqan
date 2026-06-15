import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { FooterQuestionResponse } from "@/shared/types/promise.type";

export async function getFooterQuestion(locale: string) {
  const res = await ADM_URL.get<FooterQuestionResponse>(
    ENDPOINTS.GET.FOOTER_QUESTIONS,
    { params: { locale } },
  );
  return res?.data?.data;
}
