"use client";

import { getListDocuments } from "@/shared/rest/get/get-list-documents";
import { ListDocumentsType } from "@/shared/types/promise.type";
import Container from "@/shared/ui/wrappers/container";
import { SkeletonLoad } from "@/shared/ui/wrappers/load-skeleton";
import { FileText } from "lucide-react";
import { useLocale } from "next-intl";
import { useEffect, useState } from "react";

export function ScrollDocuments() {
  const locale = useLocale();
  const [list, setList] = useState<ListDocumentsType | null>(null);
  const [isError, setIsError] = useState(false);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    getListDocuments(locale)
      .then(setList)
      .catch(() => setIsError(true))
      .finally(() => setIsLoading(false));
  }, [locale]);

  if (isLoading || isError)
    return (
      <Container>
        <div className="flex justify-center items-center">
          {isLoading ? <SkeletonLoad /> : <p>Что-то пошло не так</p>}
        </div>
      </Container>
    );

  return (
    <>
      <div className="rounded-3xl border border-border bg-card p-8 shadow-sm lg:p-12">
        <div className="flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary">
          <FileText className="h-4 w-4" />
          {list?.title}
        </div>
        <h2 className="mt-4 text-3xl font-semibold tracking-tight text-foreground lg:text-4xl">
          {list?.subtitle}
        </h2>
        <p className="mt-3 max-w-xl text-sm text-foreground/60">
          {list?.description}
        </p>

        <ol className="mt-10 space-y-3">
          {list?.items.map((doc, i) => (
            <li
              key={doc.id}
              className="group flex items-start gap-4 rounded-2xl border border-transparent bg-primary/5 p-4 transition hover:border-primary/20 hover:bg-primary/10"
            >
              <span className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary text-xs font-semibold text-primary-foreground">
                {String(i + 1).padStart(2, "0")}
              </span>
              <span className="pt-1 text-sm leading-relaxed text-foreground">
                {doc.title}
              </span>
            </li>
          ))}
        </ol>
      </div>
    </>
  );
}
