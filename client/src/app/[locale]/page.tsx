import React from "react";
import Container from "@/shared/ui/wrappers/container";
import NewsBlock from "@/app/[locale]/(components)/(blocks)/news-block";
import ComponentsBlock from "@/app/[locale]/(components)/(blocks)/components-block";
import CommisionBlock from "@/app/[locale]/(components)/(blocks)/comission-block";
import type { Metadata, ResolvingMetadata } from "next";
import { META_INFO } from "@/shared/constants/meta/meta-info";
import { PATHS } from "@/config/paths";
import { PageLocaleParamsType } from "@/shared/types/params.type";
import { getMetaTags } from "@/shared/helpers/get-meta-tags";
import DocumentsBlock from "./(components)/(blocks)/documents-block";
import ContactsComissionBlock from "./(components)/(blocks)/contacts-comission-block";

type PageProps = {
  params: Promise<PageLocaleParamsType>;
};

export async function generateMetadata(
  { params }: PageProps,
  parent: ResolvingMetadata,
): Promise<Metadata> {
  const { locale } = await params;
  const title = META_INFO.home.title[locale];
  const description = META_INFO.home.description[locale];
  const tags = META_INFO.home.keywords[locale];
  const actualImages: string[] = [META_INFO.cover[locale]];
  const previousImages = (await parent).openGraph?.images || [];

  return getMetaTags({
    title,
    description,
    tags,

    pathname: PATHS.HOME,
    images: [...actualImages, ...previousImages],
    locale,
  });
}

export default async function HomePage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  return (
    <Container>
      <ComponentsBlock locale={locale} />
      <ContactsComissionBlock />
      <CommisionBlock />
      <DocumentsBlock />
      <NewsBlock locale={locale} />
    </Container>
  );
}
