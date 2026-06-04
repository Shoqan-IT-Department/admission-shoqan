import { ScrollDocuments } from "../(cards)/scroll-documents";
import ReseptionCard from "../(cards)/reseption-card";

export function ComissionBlock() {
  return (
    <div className="my-15">
      <section className="grid gap-8 lg:grid-cols-[1.6fr_1fr] my-4">
        <ScrollDocuments />
        <ReseptionCard />
      </section>
    </div>
  );
}
