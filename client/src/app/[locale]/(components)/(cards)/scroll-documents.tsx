import Container from "@/shared/ui/wrappers/container";
import { FileText } from "lucide-react";

const documents = [
  "Документ об образовании (подлинник)",
  "Мед. справка по форме №075-У",
  "Копия прививочного паспорта (для очной формы обучения)",
  "4 фото 3×4",
  "Копия удостоверения личности (при себе иметь оригинал)",
  "Сертификат ЕНТ (при наличии)",
  "Свидетельство о гранте (при наличии)",
  "Конверт А5 — 1 шт.",
  "Скоросшиватель картонный — 1 шт.",
  "Результаты специального экзамена (для педагогических и медицинских образовательных программ)",
];

export function ScrollDocuments() {
  return (
    <Container>
      <div className="rounded-3xl border border-border bg-card p-8 shadow-sm lg:p-12">
        <div className="flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary">
          <FileText className="h-4 w-4" />
          Что подготовить
        </div>
        <h2 className="mt-4 text-3xl font-semibold tracking-tight text-foreground lg:text-4xl">
          Перечень документов
        </h2>
        <p className="mt-3 max-w-xl text-sm text-foreground/60">
          Соберите пакет до подачи заявления. Оригиналы предъявляются лично в
          приёмной комиссии.
        </p>

        <ol className="mt-10 space-y-3">
          {documents.map((doc, i) => (
            <li
              key={doc}
              className="group flex items-start gap-4 rounded-2xl border border-transparent bg-primary/5 p-4 transition hover:border-primary/20 hover:bg-primary/10"
            >
              <span className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary text-xs font-semibold text-primary-foreground">
                {String(i + 1).padStart(2, "0")}
              </span>
              <span className="pt-1 text-sm leading-relaxed text-foreground">
                {doc}
              </span>
            </li>
          ))}
        </ol>
      </div>
    </Container>
  );
}
