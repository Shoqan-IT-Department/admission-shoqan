"use client";

import {
  CalendarDays,
  HelpCircle,
  GraduationCap,
  ArrowUpRight,
} from "lucide-react";
import { useEffect, useState } from "react";
import { DeadlineType } from "@/shared/types/promise.type";
import { getReceptions } from "@/shared/rest/get/get-receptions";
import { useLocale } from "next-intl";

export default function DeadlineAside() {
  const locale = useLocale();
  const [receptions, setReceptions] = useState<DeadlineType | null>(null);

  useEffect(() => {
    getReceptions(locale).then(setReceptions);
  }, [locale]);

  return (
    <aside className="space-y-6">
      <div className="relative overflow-hidden rounded-3xl bg-primary p-8 text-primary-foreground shadow-xl">
        <div className="pointer-events-none absolute -right-16 -top-16 h-48 w-48 rounded-full bg-primary-foreground/10 blur-3xl" />
        <div className="pointer-events-none absolute -bottom-20 -left-10 h-56 w-56 rounded-full bg-[var(--accent-gold)]/15 blur-3xl" />

        <div className="relative flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary-foreground/70">
          <span className="h-px w-8 bg-primary-foreground/40" />
          {receptions?.title}
        </div>
        <h3 className="relative mt-4 text-2xl font-semibold tracking-tight">
          {receptions?.subtitle}
        </h3>

        <div className="relative mt-6 flex items-center gap-4 rounded-2xl bg-primary-foreground/10 p-5 ring-1 ring-primary-foreground/15 backdrop-blur-sm">
          <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-xl bg-primary-foreground/15">
            <CalendarDays className="h-6 w-6 text-primary-foreground" />
          </div>
          <div>
            <p className="text-xs uppercase tracking-wider text-primary-foreground/70">
              {receptions?.year}
            </p>
            <p className="text-lg font-medium">{receptions?.days}</p>
          </div>
        </div>

        <div className="relative mt-6 space-y-1">
          <p className="text-xs uppercase tracking-wider text-primary-foreground/70">
            {receptions?.consult}
          </p>
          <a
            href={`tel:${receptions?.phone}`}
            className="block text-xl font-medium tracking-tight transition hover:text-primary-foreground/80"
          >
            {receptions?.phone}
          </a>
        </div>
      </div>

      <a
        href="#faq"
        className="group flex items-start gap-4 rounded-3xl border border-border bg-card p-6 transition hover:border-primary/30 hover:shadow-md"
      >
        <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl bg-primary/10 text-primary">
          <HelpCircle className="h-6 w-6" />
        </div>
        <div className="flex-1">
          <p className="text-xs uppercase tracking-wider text-foreground/50">
            {receptions?.asked}
          </p>
          <p className="mt-1 text-base font-medium text-foreground">
            {receptions?.questions}
          </p>
        </div>
        <ArrowUpRight className="h-5 w-5 text-foreground/40 transition group-hover:-translate-y-0.5 group-hover:translate-x-0.5 group-hover:text-primary" />
      </a>

      <a
        href="#ent"
        className="group flex items-start gap-4 rounded-3xl border border-border bg-card p-6 transition hover:border-primary/30 hover:shadow-md"
      >
        <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl bg-primary/10 text-primary">
          <GraduationCap className="h-6 w-6" />
        </div>
        <div className="flex-1">
          <p className="text-xs uppercase tracking-wider text-foreground/50">
            {receptions?.nationalExam}
          </p>
          <p className="mt-1 text-base font-medium text-foreground">
            {receptions?.testingExam}
          </p>
        </div>
        <ArrowUpRight className="h-5 w-5 text-foreground/40 transition group-hover:-translate-y-0.5 group-hover:translate-x-0.5 group-hover:text-primary" />
      </a>
    </aside>
  );
}
