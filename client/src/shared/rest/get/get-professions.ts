import { ENDPOINTS } from "@/config/endpoints";
import { ADM_URL, Program } from "@/config/instance";
import {
  EducationalProgramListItem,

} from "@/shared/types/profession.type";
import { ProfessionType } from "@/shared/types/promise.type";

// запрос
export async function getProfessions(filters: {
  locale: string;
  graduates?: string[];
  page?: number;
}) {
  const params = new URLSearchParams();

  params.set("locale", filters.locale);
  params.set("pagination[page]", String(filters.page ?? 1));
  params.set("pagination[pageSize]", "5");

  if (filters.graduates?.length) {
    filters.graduates.forEach((g) => {
      params.append(`filters[graduates][$in]`, g.trim());
    });
  }

  const res = await ADM_URL.get<{
    data: ProfessionType[];
    meta: { pagination: { total: number; pageCount: number } };
  }>(`${ENDPOINTS.GET.PROFESSIONS}?${params.toString()}`);
  return res.data;
}

// ?level=bachelor,master&locale=kk
// shared/rest/get/get-programs.ts

type ProgramLevel = "ungraduate" | "graduate" | "postgraduate";

interface GetProgramsFilters {
  locale: string;
  level: ProgramLevel;
  page?: number;
}

interface ProgramsResponse {
  meta: {
    total_count: number;
  };
  items: EducationalProgramListItem[];
}
export async function getPrograms(filters: {
  locale: string;
  level: ProgramLevel;
  page?: number;
}) {
  const params = new URLSearchParams();

  params.set("locale", filters.locale);
  params.set("limit", "5");
  params.set("offset", String(((filters.page ?? 1) - 1) * 5));
  params.set("level", filters.level);

  const { data } = await Program.get<ProgramsResponse>(
    `${ENDPOINTS.GET.EDU_PROGRAM}?${params.toString()}`,
  );

  return data;
}
