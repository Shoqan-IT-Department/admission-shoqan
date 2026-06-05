"use client";

import { getHeroText } from "@/shared/rest/get/get-hero-text";
import { HeroTextType } from "@/shared/types/promise.type";
import { Search } from "lucide-react";
import { useEffect, useState } from "react";
import { Dispatch, SetStateAction } from "react";

type HeroPropsType = {
  query: string;
  setQuery: Dispatch<SetStateAction<string>>;
};
export function HeroQuestions({ query, setQuery }: HeroPropsType) {
  const [text, setText] = useState<HeroTextType | null>(null);
  useEffect(() => {
    getHeroText().then(setText);
  }, []);

  return (
    <div className="relative overflow-hidden rounded-3xl bg-primary p-10 text-primary-foreground shadow-xl lg:p-14">
      <div>
        <div className="pointer-events-none absolute -right-20 -top-20 h-56 w-56 rounded-full bg-primary-foreground/10 blur-3xl" />
        <div className="pointer-events-none absolute -bottom-24 -left-12 h-64 w-64 rounded-full bg-[var(--accent-gold)]/15 blur-3xl" />
        <div className="relative flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary-foreground/70">
          <span className="h-px w-8 bg-primary-foreground/40" />
          {text?.title}
        </div>
        <h1 className="relative mt-4 max-w-2xl text-4xl font-semibold tracking-tight lg:text-5xl">
          {text?.heading}
        </h1>
        <p className="relative mt-4 max-w-2xl text-base text-primary-foreground/80">
          {text?.paragraph}
        </p>
      </div>
      <div className="relative mt-8 flex items-center gap-3 rounded-2xl bg-primary-foreground/10 px-5 py-4 ring-1 ring-primary-foreground/15 backdrop-blur-sm">
        <Search className="h-5 w-5 text-primary-foreground/70" />
        <input
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder={text?.placeholder}
          className="w-full bg-transparent text-base text-primary-foreground placeholder:text-primary-foreground/50 focus:outline-none"
        />
      </div>
    </div>
  );
}
