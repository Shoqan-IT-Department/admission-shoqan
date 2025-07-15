import { LANGUAGES } from '@/config/languages';
import { Metadata } from 'next';
import { OpenGraph } from 'next/dist/lib/metadata/types/opengraph-types';
import { Twitter } from 'next/dist/lib/metadata/types/twitter-types';
import { META_INFO } from '@/shared/constants/meta/meta-info';
import { LocaleType } from '@/shared/types/params.type';

type OGImage = string | OGImageDescriptor | URL;
type OGImageDescriptor = {
  url: string | URL;
  secureUrl?: string | URL | undefined;
  alt?: string | undefined;
  type?: string | undefined;
  width?: string | number | undefined;
  height?: string | number | undefined;
};

type MetaTagsArgsType = {
  title: string;
  description: string;
  tags: string | string[] | undefined;
  pathname: string;
  images: OGImage | Array<OGImage>;
  openGraph?: OpenGraph | null | undefined;
  twitter?: Twitter | null | undefined;
  locale: LocaleType;
};

export function getMetaTags({
  title,
  description,
  tags,
  pathname,
  openGraph,
  twitter,
  locale,
}: MetaTagsArgsType): Metadata {
  return {
    title: `${title} - ${META_INFO.name[locale]}`,
    description: description,
    authors: [
      { name: 'Styazhkin' },
      {
        name: 'Приемная Комиссия',
        url: 'https://admission.shokan.edu.kz',
      },
    ],
    alternates: {
      canonical: `https://admission.shokan.edu.kz${pathname}`,
      languages: Object.fromEntries(
        LANGUAGES.map((lang) => [
          lang.locale,
          `https://admission.shokan.edu.kz/${lang.code}${pathname}`,
        ]),
      ),
    },
    generator: 'Next.js',
    creator: 'Styahzkin',
    applicationName: 'Приемная Комиссия - Admission Committee',
    keywords: tags,
    publisher: 'Styahzkin',
    openGraph: {
      title: title,
      description: description,
      type: 'website',
      ...openGraph,
    },
    twitter: {
      title: title,
      description: description,
      card: 'summary_large_image',
      ...twitter,
    },
    robots: {
      index: true,
      follow: true,
      googleBot: {
        index: true,
        follow: true,
        'max-video-preview': -1,
        'max-image-preview': 'large',
        'max-snippet': -1,
      },
    },
  };
}
