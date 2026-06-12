"use client";

import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/ui/select";
import { useTransition } from "react";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { useLocale } from "use-intl";
import Cookies from "js-cookie";
import { LANGUAGES } from "@/config/languages";
import { Globe } from "lucide-react";

export default function LocaleSwitcher() {
  const locale = useLocale();
  const [isPending, startTransition] = useTransition();
  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();

  const handleChangeLocale = (newLocale: string) => {
    startTransition(() => {
      Cookies.set("NEXT_LOCALE", newLocale, {
        path: "/",
        sameSite: "lax",
      });
      const pathWithoutLocale = pathname.split("/").slice(2).join("/") || "";
      const queryString = searchParams.toString();
      const hash = window.location.hash;

      const newPath = `/${newLocale}/${pathWithoutLocale}${queryString ? `?${queryString}` : ""}${hash}`;
      router.push(newPath);
    });
  };

  return (
    <div>
      <Select
        value={locale}
        onValueChange={handleChangeLocale}
        disabled={isPending}
      >
        <SelectTrigger
          className="
        h-auto w-auto gap-1.5 rounded-full
        border border-input bg-primary
        px-3 py-1.5
        text-xs font-semibold uppercase tracking-wider text-input
        shadow-none ring-offset-0
        transition hover:border-primary/40 hover:bg-background
        hover:text-primary
        focus:ring-0 focus-visible:ring-0
        data-[placeholder]:text-primary/60
        [&>svg:last-child]:h-3 [&>svg:last-child]:w-3 [&>svg:last-child]:opacity-70
      "
        >
          <Globe className="h-3.5 w-3.5 hover:text-primary" />
          <SelectValue placeholder="language" />
        </SelectTrigger>

        <SelectContent
          className="
        mt-2 min-w-28 overflow-hidden rounded-2xl
        border border-primary/15 bg-background
        p-1 shadow-xl shadow-primary/5
      "
        >
          {LANGUAGES.map((lng) => (
            <SelectItem
              key={lng.id}
              value={lng.code}
              className="
            cursor-pointer rounded-xl px-3 py-2
            text-xs font-semibold uppercase tracking-wider text-foreground/70
            focus:bg-primary/5 focus:text-primary
            data-[state=checked]:text-primary
          "
            >
              {lng.label}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
  );
}
