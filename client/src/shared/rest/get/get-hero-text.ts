import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL } from "@/config/instance";
import { HeroTextType } from "@/shared/types/promise.type";

export async function getHeroText() {
  const res = await ADM_URL.get<{ data: HeroTextType[] }>(
    ENDPOINTS.GET.HERO_QUESTIONS,
  );
  return res.data.data[0];
}
