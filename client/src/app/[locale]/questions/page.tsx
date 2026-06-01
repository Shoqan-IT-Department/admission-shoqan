"use client";

import { useMemo, useState } from "react";
import { HelpCircle, Search, ArrowLeft, Mail, Phone } from "lucide-react";
import { Link } from "@/i18n/navigation";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/ui/accordion";
import Container from "@/shared/ui/wrappers/container";

type Category = "Приём" | "ЕНТ" | "Гранты" | "Обучение" | "Студенту";

type Faq = {
  q: string;
  a: string;
  category: Category;
};

const CATEGORIES: Category[] = [
  "Приём",
  "ЕНТ",
  "Гранты",
  "Обучение",
  "Студенту",
];

const FAQS: Faq[] = [
  {
    category: "Приём",
    q: "Какие документы нужны для подачи заявления?",
    a: "Удостоверение личности, аттестат или диплом, сертификат ЕНТ, медицинская справка 075-У, 6 фотографий 3×4 и заявление установленного образца.",
  },
  {
    category: "Приём",
    q: "Можно ли подать документы онлайн?",
    a: "Да. Документы принимаются как лично в приёмной комиссии, так и через личный кабинет абитуриента на сайте университета.",
  },
  {
    category: "Приём",
    q: "Каковы сроки приёма заявлений в 2025 году?",
    a: "Приём документов проходит с 1 июля по 25 августа. Конкретные даты по уровням образования уточняйте у приёмной комиссии.",
  },
  {
    category: "ЕНТ",
    q: "Какой минимальный балл ЕНТ нужен для поступления?",
    a: "Для участия в конкурсе на грант — от 65 баллов, для платной формы — от 50 баллов. По творческим специальностям — от 25 баллов.",
  },
  {
    category: "ЕНТ",
    q: "Сколько раз в год можно сдавать ЕНТ?",
    a: "ЕНТ можно сдавать несколько раз в течение года в установленные Министерством периоды. Для конкурса учитывается лучший результат.",
  },
  {
    category: "Гранты",
    q: "Как принять участие в конкурсе на образовательный грант?",
    a: "Подайте заявление в любой ВУЗ страны с указанием выбранной специальности. Конкурс проводится централизованно по баллам ЕНТ.",
  },
  {
    category: "Гранты",
    q: "Существуют ли внутренние гранты университета?",
    a: "Да. Университет ежегодно выделяет собственные гранты и скидки для талантливых абитуриентов, призёров олимпиад и многодетных семей.",
  },
  {
    category: "Обучение",
    q: "Какие формы обучения доступны?",
    a: "Очная и заочная формы. По ряду программ магистратуры доступна дистанционная и вечерняя формы обучения.",
  },
  {
    category: "Обучение",
    q: "На каких языках ведётся обучение?",
    a: "Обучение ведётся на казахском, русском и английском языках. Язык обучения выбирается при подаче заявления.",
  },
  {
    category: "Студенту",
    q: "Предоставляется ли общежитие?",
    a: "Да. Иногородним студентам предоставляется место в общежитии. Приоритет — социально уязвимым категориям и студентам с высоким баллом.",
  },
  {
    category: "Студенту",
    q: "Есть ли военная кафедра?",
    a: "Да. Студенты очной формы могут пройти военную подготовку на базе военной кафедры университета по конкурсному отбору.",
  },
];

const QuestionsPage = () => {
  const [query, setQuery] = useState("");
  const [active, setActive] = useState<Category | "Все">("Все");

  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    return FAQS.filter((f) => {
      const matchCat = active === "Все" || f.category === active;
      const matchQ =
        !q || f.q.toLowerCase().includes(q) || f.a.toLowerCase().includes(q);
      return matchCat && matchQ;
    });
  }, [query, active]);

  return (
    <Container>
      <div className="py-10">
        {/* Hero */}
        <header className="relative mt-8 overflow-hidden rounded-3xl bg-primary p-10 text-primary-foreground shadow-xl lg:p-14">
          <div className="pointer-events-none absolute -right-20 -top-20 h-56 w-56 rounded-full bg-primary-foreground/10 blur-3xl" />
          <div className="pointer-events-none absolute -bottom-24 -left-12 h-64 w-64 rounded-full bg-[var(--accent-gold)]/15 blur-3xl" />

          <div className="relative flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary-foreground/70">
            <span className="h-px w-8 bg-primary-foreground/40" />
            Помощь абитуриенту
          </div>
          <h1 className="relative mt-4 max-w-2xl text-4xl font-semibold tracking-tight lg:text-5xl">
            Часто задаваемые вопросы
          </h1>
          <p className="relative mt-4 max-w-2xl text-base text-primary-foreground/80">
            Собрали ответы на самые популярные вопросы о поступлении, ЕНТ,
            грантах и студенческой жизни. Не нашли свой — напишите нам.
          </p>

          {/* Search */}
          <div className="relative mt-8 flex items-center gap-3 rounded-2xl bg-primary-foreground/10 px-5 py-4 ring-1 ring-primary-foreground/15 backdrop-blur-sm">
            <Search className="h-5 w-5 text-primary-foreground/70" />
            <input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Поиск по вопросам…"
              className="w-full bg-transparent text-base text-primary-foreground placeholder:text-primary-foreground/50 focus:outline-none"
            />
          </div>
        </header>

        {/* Categories */}
        <div className="mt-10 flex flex-wrap gap-2">
          {(["Все", ...CATEGORIES] as const).map((c) => {
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
                  key={i}
                  value={`item-${i}`}
                  className="border-b border-border last:border-b-0"
                >
                  <AccordionTrigger className="px-4 py-5 text-left text-base font-medium text-foreground hover:no-underline sm:px-6">
                    <div className="flex items-start gap-4">
                      <span className="mt-0.5 inline-flex shrink-0 items-center rounded-full bg-primary/10 px-2.5 py-0.5 text-[11px] font-medium uppercase tracking-wider text-primary">
                        {item.category}
                      </span>
                      <span>{item.q}</span>
                    </div>
                  </AccordionTrigger>
                  <AccordionContent className="px-4 pb-6 pl-[5.25rem] text-sm leading-relaxed text-foreground/70 sm:px-6 sm:pl-[6.25rem]">
                    {item.a}
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
