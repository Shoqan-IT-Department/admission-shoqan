import React from "react";
import Container from "@/shared/ui/wrappers/container";
import type { Metadata, ResolvingMetadata } from "next";
import { META_INFO } from "@/shared/constants/meta/meta-info";
import { PATHS } from "@/config/paths";
import { PageLocaleParamsType } from "@/shared/types/params.type";
import { getMetaTags } from "@/shared/helpers/get-meta-tags";
import ProfessionListWrapper from "@/app/[locale]/education-programs/(components)/blocks/professionlist-wrapper";
import { getTranslations } from "next-intl/server";

type PageProps = {
  params: Promise<PageLocaleParamsType>;
};

export async function generateMetadata(
  { params }: PageProps,
  parent: ResolvingMetadata,
): Promise<Metadata> {
  const { locale } = await params;

  const title = META_INFO.education.title[locale];
  const description = META_INFO.education.description[locale];
  const tags = META_INFO.education.keywords[locale];
  const actualImages: string[] = [META_INFO.cover[locale]];
  const previousImages = (await parent).openGraph?.images || [];

  return getMetaTags({
    title,
    description,
    tags,
    pathname: PATHS.EDU_PROGRAMS,
    images: [...actualImages, ...previousImages],
    locale,
  });
}

export default async function EducationProgramsPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  const t = await getTranslations("ProffesionPage");
  return (
    <Container>
      <h1 className="scroll-m-20 pt-6 text-4xl text-primary font-bold tracking-tight text-balance mb-10">
        {t("title")}
      </h1>
      <ProfessionListWrapper locale={locale} />
    </Container>
  );
}
