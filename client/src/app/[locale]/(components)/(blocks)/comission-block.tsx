import Container from "@/shared/ui/wrappers/container";
import { FileText } from "lucide-react";
import { ScrollDocuments } from "../(cards)/scroll-documents";
import { ReseptionCard } from "../(cards)/reseption-card";

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

export function ComissionBlock() {
  return (
    <Container>
      <section className="grid gap-8 lg:grid-cols-[1.6fr_1fr] my-4">
        <ScrollDocuments />
        <ReseptionCard />
      </section>
    </Container>
  );
}
