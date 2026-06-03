"use client";

import { act, useEffect, useMemo, useState } from "react";
import { HelpCircle, Mail, Phone } from "lucide-react";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/ui/accordion";
import Container from "@/shared/ui/wrappers/container";
import { HeroQuestions } from "./(blocks)/hero-block";
import { getQuestions } from "@/shared/rest/get/getQuestions";
import { CategoryType, QuestionType } from "@/shared/types/promise.type";
import { useLocale, useTranslations } from "next-intl";

const QuestionsPage = () => {
  const t = useTranslations("UI");
  const locale = useLocale();
  const [questions, setQuestions] = useState<QuestionType[]>([]);
  const [categories, setCategories] = useState<CategoryType[]>([]);
  const [query, setQuery] = useState("");
  const [active, setActive] = useState(t("all"));

  useEffect(() => {
    getQuestions(locale, active === t("all") ? undefined : active).then(
      (data) => {
        setQuestions(data);
        if (active === t("all")) {
          const all = data.flatMap((q) => q.categories);
          setCategories([...new Map(all.map((c) => [c.id, c])).values()]);
        }
      },
    );
  }, [locale, active]);

  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return questions;
    return questions.filter((f) => f.title.toLowerCase().includes(q));
  }, [query, questions]);

  return (
    <Container>
      <div className="py-10">
        <HeroQuestions query={query} setQuery={setQuery} />

        {/* Categories */}
        <div className="mt-10 flex flex-wrap gap-2">
          {[t("all"), ...categories.map((c) => c.title)].map((c) => {
            const isActive = active === c;
            return (
              <button
                key={c}
                onClick={() => setActive(c)}
                className={[
                  "rounded-full border px-4 py-2 text-sm font-medium transition",
                  isActive
                    ? "border-primary bg-primary text-primary-foreground shadow-sm"
                    : "border-border bg-card text-foreground/70 hover:border-primary/40 hover:text-foreground",
                ].join(" ")}
              >
                {c}
              </button>
            );
          })}
        </div>

        {/* List */}
        <section className="mt-8 rounded-3xl border border-border bg-card p-2 sm:p-4">
          {filtered.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-16 text-center">
              <div className="flex h-14 w-14 items-center justify-center rounded-2xl bg-primary/10 text-primary">
                <HelpCircle className="h-7 w-7" />
              </div>
              <p className="mt-4 text-base font-medium text-foreground">
                Ничего не нашлось
              </p>
              <p className="mt-1 text-sm text-foreground/60">
                Попробуйте изменить запрос или выбрать другую категорию.
              </p>
            </div>
          ) : (
            <Accordion type="single" collapsible className="w-full">
              {filtered.map((item, i) => (
                <AccordionItem
                  key={item.id}
                  value={`item-${i}`}
                  className="border-b border-border last:border-b-0"
                >
                  <AccordionTrigger className="px-4 py-5 text-left text-base font-medium text-foreground hover:no-underline sm:px-6">
                    <div className="flex items-start gap-4">
                      <span>{item.title}</span>
                      {item.categories[0] && (
                        <span className="mt-0.5 inline-flex shrink-0 items-center rounded-full bg-primary/10 px-2.5 py-0.5 text-[11px] font-medium uppercase tracking-wider text-primary">
                          {item.categories[0].title}
                        </span>
                      )}
                    </div>
                  </AccordionTrigger>
                  <AccordionContent className=" pb-6 pl-[5.25rem] text-sm leading-relaxed text-foreground/70 sm:px-6">
                    {item.text}
                  </AccordionContent>
                </AccordionItem>
              ))}
            </Accordion>
          )}
        </section>

        {/* Contact CTA */}
        <section className="mt-10 grid gap-4 sm:grid-cols-2">
          <a
            href="tel:+77162721112"
            className="group flex items-center gap-4 rounded-3xl border border-border bg-card p-6 transition hover:border-primary/40 hover:shadow-md"
          >
            <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl bg-primary/10 text-primary">
              <Phone className="h-6 w-6" />
            </div>
            <div>
              <p className="text-xs uppercase tracking-wider text-foreground/50">
                Позвоните нам
              </p>
              <p className="mt-1 text-lg font-medium text-foreground">
                +7 716 272 11 12
              </p>
            </div>
          </a>

          <a
            href="mailto:admission@university.kz"
            className="group flex items-center gap-4 rounded-3xl border border-border bg-card p-6 transition hover:border-primary/40 hover:shadow-md"
          >
            <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl bg-primary/10 text-primary">
              <Mail className="h-6 w-6" />
            </div>
            <div>
              <p className="text-xs uppercase tracking-wider text-foreground/50">
                Напишите письмо
              </p>
              <p className="mt-1 text-lg font-medium text-foreground">
                admission@university.kz
              </p>
            </div>
          </a>
        </section>
      </div>
    </Container>
  );
};

export default QuestionsPage;
