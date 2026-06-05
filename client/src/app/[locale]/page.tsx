import type { Metadata, ResolvingMetadata } from "next";
import { META_INFO } from "@/shared/constants/meta/meta-info";
import { PATHS } from "@/config/paths";
import { PageLocaleParamsType } from "@/shared/types/params.type";
import { getMetaTags } from "@/shared/helpers/get-meta-tags";
import CarouselBlock from "./(components)/(blocks)/carousel-block";
import { ContactsBlock } from "./(components)/(blocks)/contacts-block";
import DocumentsBlock from "./(components)/(blocks)/documents-block";
import { ComissionBlock } from "./(components)/(blocks)/comission-block";
import { AdmissionBlock } from "./(components)/(blocks)/admission-block";
import VideoBlock from "@/app/[locale]/(components)/(blocks)/video-block";
import Container from "@/shared/ui/wrappers/container";
import { Suspense } from "react";
import PuffLoader from "react-spinners/PuffLoader";
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

export const revalidate = 600;

export default async function HomePage() {
  return (
    <Container>
      <Suspense
        fallback={<PuffLoader size={180} className="p-10" color="#1470B9FF" />}
      >
        <VideoBlock />
        <AdmissionBlock />
        <ComissionBlock />
        <DocumentsBlock />
        <ContactsBlock />
        <CarouselBlock />
      </Suspense>
    </Container>
  );
}
