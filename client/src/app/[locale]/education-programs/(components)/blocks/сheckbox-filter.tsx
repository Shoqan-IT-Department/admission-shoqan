"use client";

import React, { useEffect, useState } from "react";
import { SlidersHorizontal } from "lucide-react";
import { getGraduates } from "@/shared/rest/get/get-graduates";
import { GraduateType } from "@/shared/types/promise.type";
import { useLocale } from "next-intl";

const LEVEL_MAP: Record<string, string> = {
  "Бакалавриат": "undergraduate",
  "Магистратура": "graduate",
  "Докторантура": "doctoral",
};

type LevelFilterProps = {
  selected: string[];
  onChange: (selected: string[]) => void;
};

const LevelFilter: React.FC<LevelFilterProps> = ({ selected, onChange }) => {
  const [graduates, setGraduates] = useState<GraduateType[]>([]);
  const locale = useLocale();

  useEffect(() => {
    getGraduates(locale).then(setGraduates);
  }, [locale]);

  const handleChange = (graduate: string) => {
    const value = LEVEL_MAP[graduate] ?? graduate;
    const newSelected = selected.includes(value)
      ? selected.filter((g) => g !== value)
      : [...selected, value];
    onChange(newSelected);
  };

  const handleReset = () => onChange([]);

  return (
    <aside className="h-fit rounded-3xl border border-primary/15 bg-card p-6 shadow-sm lg:sticky lg:top-6">
      <div className="flex items-center gap-2 text-xs uppercase tracking-[0.25em] text-primary">
        <SlidersHorizontal className="h-4 w-4" />
        Фильтр
      </div>

      <ul className="mt-5 space-y-1">
        {graduates.map((graduate) => {
          const value = LEVEL_MAP[graduate.graduates] ?? graduate.graduates;
          const checked = selected.includes(value);
          return (
            <li key={graduate.id}>
              <label
                className={`flex cursor-pointer items-center justify-between gap-3 rounded-2xl border px-4 py-3 text-sm transition ${
                  checked
                    ? "border-primary/40 bg-primary/10 text-primary"
                    : "border-transparent text-foreground/70 hover:bg-primary/5 hover:text-primary"
                }`}
              >
                <span className="font-medium">{graduate.graduates}</span>
                <span
                  className={`flex h-5 w-5 items-center justify-center rounded-md border transition ${
                    checked
                      ? "border-primary bg-primary"
                      : "border-foreground/25 bg-transparent"
                  }`}
                  aria-hidden
                >
                  {checked && (
                    <svg
                      viewBox="0 0 12 12"
                      className="h-3 w-3 text-primary-foreground"
                    >
                      <path
                        d="M2 6.5L5 9.5L10 3.5"
                        stroke="currentColor"
                        strokeWidth="2"
                        fill="none"
                        strokeLinecap="round"
                        strokeLinejoin="round"
                      />
                    </svg>
                  )}
                </span>
                <input
                  type="checkbox"
                  checked={checked}
                  onChange={() => handleChange(graduate.graduates)}
                  className="sr-only"
                />
              </label>
            </li>
          );
        })}
      </ul>

      <button
        type="button"
        onClick={handleReset}
        className="mt-6 w-full rounded-full bg-primary py-3 text-sm font-semibold text-primary-foreground transition hover:bg-primary/90 active:scale-[0.98]"
      >
        Сбросить
      </button>
    </aside>
  );
};

export default LevelFilter;