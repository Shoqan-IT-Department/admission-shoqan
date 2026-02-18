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
        <SelectTrigger className="border  text-secondary shadow-none">
          <SelectValue placeholder="language" />
        </SelectTrigger>
        <SelectContent className="shadow-xl text-secondary shadow-primary/5">
          {LANGUAGES.map((lng) => (
            <SelectItem key={lng.id} value={lng.code}>
              {lng.label}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
  );
}
