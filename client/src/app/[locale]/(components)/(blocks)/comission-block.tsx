import {
  Clock,
  Instagram,
  Map,
  MapPinCheckInside,
  Mail,
  Phone,
} from "lucide-react";
import Link from "next/link";
import { getTranslations } from "next-intl/server";

export default async function CommisionBlock() {
  const t = await getTranslations("HomePage");

  return (
    <div className="my-10 flex justify-between items-center">
      <div className="bg-card rounded-4xl select-none">
        <h1 className="scroll-m-20 text-4xl text-primary font-semibold tracking-tight my-8">
          {t("commisionblock.sectitle")}
        </h1>

        <ul className="list-disc list-inside space-y-2 text-foreground">
          <li className=" text-xl">{t("commisionblock.doc")}</li>
          <li className=" text-xl">{t("commisionblock.med")}</li>
          <li className=" text-xl">{t("commisionblock.identifycard")}</li>
          <li className=" text-xl">{t("commisionblock.photos")}</li>
          <li className="text-xl">{t("commisionblock.card")}</li>
          <li className="text-xl">{t("commisionblock.certificate")}</li>
          <li className=" text-xl">{t("commisionblock.grant")}</li>
          <li className=" text-xl">{t("commisionblock.envelope")}</li>
          <li className="text-xl">{t("commisionblock.folder")}</li>
          <li className=" text-xl">{t("commisionblock.exam")}</li>
        </ul>
      </div>
      <div className="h-full">
        <h1 className="scroll-m-20 text-4xl text-primary font-semibold tracking-tight mb-10">
          {t("commisionblock.sectitle")}
        </h1>
        <div className="mb-2">
          <p className="text-base text-foreground">Срок приема заявлений</p>
          <p className="text-lg font-medium text-foreground">
            1 июля 2025 г. - 25 августа 2025 г
          </p>
        </div>
        <div className="mb-2">
          <p className="text-base text-foreground ">
            Консультации по вопросам приема:
          </p>
          <p className="text-lg font-medium text-foreground">+77162721112</p>
        </div>
        <div>
          <p className="text-base text-foreground">Часто задаваемые вопросы:</p>
          <p className="text-lg font-medium text-foreground">
            Часто задаваемые вопросы
          </p>
        </div>
      </div>
    </div>
  );
}
