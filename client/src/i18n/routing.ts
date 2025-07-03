import { defineRouting } from 'next-intl/routing';
import { LANGUAGES } from '@/config/languages';

export const routing = defineRouting({
  locales: LANGUAGES.map((lng) => lng.code),
  defaultLocale: 'ru',
  localeDetection: true,
});