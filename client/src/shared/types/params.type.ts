import { LANGUAGES } from '@/config/languages';

export type PageSearchParamsType = string | string[] | undefined;

export type LocaleType = (typeof LANGUAGES)[number]['code'];

export type PageLocaleParamsType = {
  locale: LocaleType;
};

export type NewsIdPageParamsType = PageLocaleParamsType & {
  newsId: string | undefined;
};

export type ProductIdPageParamsType = PageLocaleParamsType & {
  productId: string | undefined;
};
