"use client";

import React, { useEffect, useState } from "react";
import { ArrowRight } from "lucide-react";
import Link from "next/link";
import Pagination from "@/shared/ui/pagination";
import { usePagination } from "@/shared/hooks/usePagination";
import { useLocale } from "next-intl";
import { EducationalProgramListItem } from "@/shared/types/profession.type";
import { getPrograms } from "@/shared/rest/get/get-professions";
import LevelFilter from "./сheckbox-filter";

type ProgramLevel = "ungraduate" | "graduate" | "postgraduate";

const ITEMS_PER_PAGE = 5;

const ProgramList = () => {
  const [selectedLevel, setSelectedLevel] =
    useState<string[]>([]);
  const [programs, setPrograms] = useState<EducationalProgramListItem[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const locale = useLocale();

  const { currentPage, totalPages, setCurrentPage, reset } = usePagination(
    totalCount,
    ITEMS_PER_PAGE,
  );

  useEffect(() => {
    getPrograms({
      locale,
      level: selectedLevel,
      page: currentPage,
    }).then((res) => {
      setPrograms(res.items);
      setTotalCount(res.meta.total_count);
    });
    window.scrollTo({ top: 0, behavior: "smooth" });
  }, [selectedLevel, locale, currentPage]);

  return (
    <div className="flex flex-col lg:flex-row items-start gap-4 w-full">
      <div className="w-full lg:w-[300px]">
        <LevelFilter
          selected={selectedLevel}
          onChange={(selected) => {
            reset();
            setSelectedLevel(selected);
          }}
        />
      </div>

      <div className="min-h-[800px] w-full">
        <main className="space-y-4">
          {programs.map((program) => (
            <Link
              key={program.id}
              href={program.meta.html_url || ""}
              className="group relative flex items-center gap-6 overflow-hidden rounded-3xl border border-primary/10 bg-card p-6 pr-8 shadow-sm transition hover:-translate-y-0.5 hover:border-primary/40 hover:shadow-xl lg:p-8"
            >
              <div className="min-w-0 flex-1">
                <div className="text-xs font-medium tracking-wide text-foreground/55">
                  <span className="text-primary">{program.index}</span>
                  {program.profile_subjects_list?.length > 0 && (
                    <>
                      <span className="mx-2 text-foreground/30">·</span>
                      {program.profile_subjects_list.join(", ")}
                    </>
                  )}
                </div>
                <h3 className="mt-2 text-lg font-semibold leading-snug text-foreground lg:text-xl">
                  {program.title}
                </h3>
                <div className="mt-4 flex flex-wrap gap-2">
                  <span className="rounded-full bg-primary px-4 py-1.5 text-xs font-medium text-primary-foreground">
                    {program.level_name}
                  </span>
                  {program.form_name && (
                    <span className="rounded-full bg-primary px-4 py-1.5 text-xs font-medium text-primary-foreground">
                      {program.form_name}
                    </span>
                  )}
                </div>
              </div>
              <span className="flex h-11 w-11 shrink-0 items-center justify-center rounded-full bg-primary text-primary-foreground shadow-sm transition group-hover:scale-110 group-hover:shadow-lg">
                <ArrowRight className="h-5 w-5 transition group-hover:translate-x-0.5" />
              </span>
            </Link>
          ))}
          {programs.length === 0 && (
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

export default ProgramList;
