"use client";

import { PATHS } from "@/config/paths";
import { useTranslations } from "next-intl";
import { usePathname } from "next/navigation";

const PATH_KEYS: Record<string, string> = {
  [PATHS.HOME]: "home",
  [PATHS.EDU_PROGRAMS]: "education-programs",
  [PATHS.NEWS]: "news",
  [PATHS.CHOICE]: "choice",
  [PATHS.NEWSBLOCK]: "newsblock",
  [PATHS.COMISSION]: "comission",
};

// в компоненте
const t = useTranslations("paths");
const location = usePathname();
const roadName = PATH_KEYS[location] ? t(PATH_KEYS[location]) : "";

export { roadName };
