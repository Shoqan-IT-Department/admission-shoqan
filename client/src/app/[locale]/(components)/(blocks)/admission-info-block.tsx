"use client";

import { getHeads } from "@/shared/rest/get/get-heads";
import { getInfoAdmission } from "@/shared/rest/get/get-info";
import { HeadType, InfoAdmission } from "@/shared/types/promise.type";
import { FileText } from "lucide-react";
import { useLocale } from "next-intl";
import { useEffect, useState } from "react";

export function AdmissionInfoBlock() {
  const locale = useLocale();
  const [info, setInfo] = useState<InfoAdmission[]>([]);
  const [heads, setHeads] = useState<HeadType[]>([]);
  useEffect(() => {
    Promise.all([
      getInfoAdmission(locale).then(setInfo),
      getHeads(locale).then(setHeads),
    ]);
  }, [locale]);

  return (
    <section>
      <div className="flex items-end justify-between gap-6">
        <h2 className="text-3xl font-semibold tracking-tight text-primary lg:text-4xl">
          {heads[2]?.heading}
        </h2>
        <span className="hidden h-px flex-1 translate-y-[-0.6rem] bg-primary/15 sm:block" />
      </div>

      <div className="mt-8 grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {[...info].reverse().map((item) => (
          <article
            key={item.id}
            className="group relative overflow-hidden rounded-3xl border border-primary/15 bg-card p-7 shadow-sm transition hover:-translate-y-1 hover:border-primary/40 hover:shadow-xl"
          >
            <div
              className="pointer-events-none absolute -left-12 -top-12 h-32 w-32 rounded-full bg-primary/5 transition-transform duration-500 group-hover:scale-150"
              aria-hidden
            />

            <div className="relative">
              <div className="text-[10px] font-bold uppercase tracking-[0.22em] text-primary/70">
                {item.title}
              </div>
              <h3 className="mt-2 text-xl font-semibold tracking-tight text-primary">
                {item.subtitle}
              </h3>

              <ul className="mt-5 space-y-3">
                {item.links.map((detail) => (
                  <li key={detail.id}>
                    <a
                      href={detail.url}
                      className="group/link flex items-start gap-3 text-sm leading-snug text-foreground/75 transition hover:text-primary"
                    >
                      <span className="mt-0.5 flex h-7 w-7 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary transition group-hover/link:bg-primary group-hover/link:text-primary-foreground">
                        <FileText className="h-3.5 w-3.5" />
                      </span>
                      <span className="underline-offset-2 group-hover/link:underline">
                        {detail.text}
                      </span>
                    </a>
                  </li>
                ))}
              </ul>
            </div>
          </article>
        ))}
      </div>
    </section>
  );
}
