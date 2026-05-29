"use client";

import { getAdmission } from "@/shared/rest/get/get-admissions";
import { getHeads } from "@/shared/rest/get/get-heads";
import { AdmissionType, HeadType } from "@/shared/types/promise.type";
import Container from "@/shared/ui/wrappers/container";
import { GraduationCap, BookOpen, Award, ArrowUpRight } from "lucide-react";
import { useLocale } from "next-intl";
import { useEffect, useState } from "react";
import { PuffLoader } from "react-spinners";
import {Link} from "@/i18n/navigation";
import {PATHS} from "@/config/paths";

const ICONS = [GraduationCap, BookOpen, Award];

export function AdmissionBlock() {
  const locale = useLocale();
  const [admissions, setAdmissions] = useState<AdmissionType[]>([]);
  const [heads, setHeads] = useState<HeadType[]>([]);
  const [isError, setIsError] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  useEffect(() => {
    Promise.all([
      getAdmission(locale).then(setAdmissions),
      getHeads(locale).then(setHeads),
    ])
      .catch(() => setIsError(true))
      .finally(() => setIsLoading(false));
  }, [locale]);

  if (isLoading || isError)
    return (
      <Container>
        <div className="flex justify-center items-center">
          {isLoading ? (
            <PuffLoader color="#1470B9FF" />
          ) : (
            <p>Что-то пошло не так</p>
          )}
        </div>
      </Container>
    );

  return (
    <Container>
      <section>
        <Link href={PATHS.EDU_PROGRAMS}>
          <div className="flex items-end justify-between gap-6 my-6">
            <h2 className="text-3xl font-semibold tracking-tight text-primary lg:text-4xl">
              {heads[0]?.heading}
            </h2>
            <span className="hidden h-px flex-1 translate-y-[-0.6rem] bg-primary/15 sm:block" />
          </div>

          <div className="mt-8 grid gap-6 md:grid-cols-2 lg:grid-cols-3">
            {admissions.map((item, index) => {
              const Icon = ICONS[index % ICONS.length];
              return (
                  <div
                      key={item.id}
                      className="group relative flex min-h-[280px] flex-col justify-between overflow-hidden rounded-3xl border border-primary/15 bg-card p-7 shadow-sm transition hover:-translate-y-1 hover:border-primary/40 hover:shadow-xl"
                  >
                    <div
                        className="pointer-events-none absolute -right-16 -top-16 h-44 w-44 rounded-full bg-primary/5 transition-transform duration-500 group-hover:scale-150"
                        aria-hidden
                    />

                    <div className="relative">
                      <div className="flex h-14 w-14 items-center justify-center rounded-2xl bg-primary/10 text-primary transition group-hover:bg-primary group-hover:text-primary-foreground">
                        <Icon className="h-7 w-7" />
                      </div>

                      <h3 className="mt-6 text-2xl font-semibold tracking-tight text-primary">
                        {item.title}
                      </h3>
                      <p className="mt-3 text-sm leading-relaxed text-foreground/60">
                        {item.subtitle}
                      </p>
                    </div>
                    <a
                        href="#"
                        className="relative mt-8 inline-flex items-center gap-2 self-start rounded-full border border-primary/20 px-5 py-2 text-sm font-medium text-primary transition group-hover:border-primary group-hover:bg-primary group-hover:text-primary-foreground"
                    >
                      {item.more}
                      <ArrowUpRight className="h-4 w-4 transition group-hover:translate-x-0.5 group-hover:-translate-y-0.5" />
                    </a>
                  </div>
              );
            })}
          </div>
        </Link>
      </section>
    </Container>
  );
}
