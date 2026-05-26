"use client";

import React, { useEffect, useState } from "react";
import { ADM_URL } from "@/config/instance";

import { ArrowRight } from "lucide-react";
import Link from "next/link";
import GraduateCheckboxes from "@/app/[locale]/education-programs/(components)/blocks/сheckbox-filter";
import Pagination from "@/shared/ui/pagination";

type ProfessionType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string | null;
  code: string;
  form: string | null;
  graduates: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
  url: string | null;
};

type Props = {
  locale: string;
};

const ITEMS_PER_PAGE = 5;

const ProfessionList = ({ locale }: Props) => {
  const [selectedGraduates, setSelectedGraduates] = useState<string[]>([]);
  const [professions, setProfessions] = useState<ProfessionType[]>([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalCount, setTotalCount] = useState(0);

  const fallbackLocale = "ru-RU";

  const buildQuery = (
    graduates: string[],
    loc: string,
    start: number,
    limit: number,
  ) => {
    const params = new URLSearchParams();
    params.set("locale", loc);
    params.set("pagination[start]", start.toString());
    params.set("pagination[limit]", limit.toString());

    if (graduates.length === 1) {
      params.set("filters[graduates][$eq]", graduates[0]);
    } else if (graduates.length > 1) {
      params.set("filters[graduates][$in]", graduates.join(","));
    }

    return `/api/professions?${params.toString()}`;
  };

  const fetchProfessions = async () => {
    try {
      const localesToTry = [locale, fallbackLocale];
      let result: ProfessionType[] = [];
      let total = 0;

      for (const loc of localesToTry) {
        const start = (currentPage - 1) * ITEMS_PER_PAGE;
        const url = buildQuery(selectedGraduates, loc, start, ITEMS_PER_PAGE);
        const res = await ADM_URL.get<{
          data: ProfessionType[];
          meta: { pagination: { total: number } };
        }>(url);
        result = res.data.data;
        total = res.data.meta.pagination.total;
        if (result.length > 0) break;
      }

      setProfessions(result);
      setTotalCount(total);
    } catch (error) {
      console.error("Ошибка при загрузке профессий:", error);
    }
  };

  useEffect(() => {
    fetchProfessions();
    window.scrollTo({ top: 0, behavior: "smooth" });
  }, [selectedGraduates, locale, currentPage]);

  const totalPages = Math.ceil(totalCount / ITEMS_PER_PAGE);

  return (
    <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
      <div className="w-full lg:w-[300px]">
        <GraduateCheckboxes
          selected={selectedGraduates}
          onChange={(selected) => {
            setCurrentPage(1);
            setSelectedGraduates(selected);
          }}
        />
      </div>

      <div className="min-h-[800px] w-full">
        <main className="space-y-4">
          {professions.map((prof) => (
            <Link
              key={prof.id}
              href={prof.url || ""}
              className="group relative flex items-center gap-6 overflow-hidden rounded-3xl border border-primary/10 bg-card p-6 pr-8 shadow-sm transition hover:-translate-y-0.5 hover:border-primary/40 hover:shadow-xl lg:p-8"
            >
              <div className="min-w-0 flex-1">
                <div className="text-xs font-medium tracking-wide text-foreground/55">
                  <span className="text-primary">{prof.code}</span>
                  {prof.subtitle && (
                    <>
                      <span className="mx-2 text-foreground/30">·</span>
                      {prof.subtitle}
                    </>
                  )}
                </div>

                <h3 className="mt-2 text-lg font-semibold leading-snug text-foreground lg:text-xl">
                  {prof.title}
                </h3>

                <div className="mt-4 flex flex-wrap gap-2">
                  <span className="rounded-full bg-primary px-4 py-1.5 text-xs font-medium text-primary-foreground">
                    {prof.graduates}
                  </span>
                  {prof.form && (
                    <span className="rounded-full bg-primary px-4 py-1.5 text-xs font-medium text-primary-foreground">
                      {prof.form}
                    </span>
                  )}
                </div>
              </div>

              <span
                className="flex h-11 w-11 shrink-0 items-center justify-center rounded-full bg-primary text-primary-foreground shadow-sm transition group-hover:scale-110 group-hover:shadow-lg"
                aria-hidden
              >
                <ArrowRight className="h-5 w-5 transition group-hover:translate-x-0.5" />
              </span>
            </Link>
          ))}

          {professions.length === 0 && (
            <div className="rounded-3xl border border-dashed border-primary/20 bg-card p-12 text-center text-sm text-foreground/60">
              По выбранным фильтрам ничего не найдено.
            </div>
          )}
        </main>

        <div className="w-full items-center pb-6">
          <Pagination
            totalPages={totalPages}
            currentPage={currentPage}
            onChange={setCurrentPage}
          />
        </div>
      </div>
    </div>
  );
};

export default ProfessionList;
