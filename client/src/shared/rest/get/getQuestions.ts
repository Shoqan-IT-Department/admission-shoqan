import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { QuestionType } from "@/shared/types/promise.type";

export async function getQuestions(locale: string, category?: string) {
  const params: Record<string, string> = {
    populate: "categories",
    locale,
  };

  if (category) {
    params["filters[categories][title][$eq]"] = category;
  }

  const res = await ADM_URL.get<{ data: QuestionType[] }>(
    ENDPOINTS.GET.QUESTIONS,
    { params },
  );
  return res.data.data;
}
