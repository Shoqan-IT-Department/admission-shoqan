import { ENDPOINTS } from "@/config/endpoints";
import { Program } from "@/config/instance";
import { ProgramsResponse } from "@/shared/types/profession.type";

export async function getPrograms(filters: {
  locale: string;
  level: string[];
  page?: number;
}) {
  const params = new URLSearchParams();

  params.set("locale", filters.locale);
  params.set("limit", "5");
  params.set("offset", String(((filters.page ?? 1) - 1) * 5));

  if (filters.level?.length) {
    filters.level.forEach((l) => {
      params.append("level", l.trim());
    });
  }

  const { data } = await Program.get<ProgramsResponse>(
    `${ENDPOINTS.GET.EDU_PROGRAM}?${params.toString()}`,
  );

  return data;
}