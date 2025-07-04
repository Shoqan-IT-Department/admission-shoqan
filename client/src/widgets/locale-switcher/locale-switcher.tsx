'use client';

import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/shared/ui/select';
import { useTransition } from 'react';
import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import { useLocale } from 'use-intl';
import Cookies from 'js-cookie';
import { LANGUAGES } from '@/config/languages';

export default function LocaleSwitcher() {
  const currentLocale = useLocale(); // Текущая локаль
  const [isPending, startTransition] = useTransition();
  const router = useRouter();
  const pathname = usePathname(); // /ru/about, /kk/education
  const searchParams = useSearchParams();

  const handleChangeLocale = (newLocale: string) => {
    if (newLocale === currentLocale) return;

    startTransition(() => {
      // Сохраняем локаль в куку
      Cookies.set('NEXT_LOCALE', newLocale, {
        path: '/',
        sameSite: 'lax',
      });

      // Удаляем текущую локаль из URL (первая часть)
      const pathParts = pathname.split('/');
      const pathWithoutLocale = pathParts.slice(2).join('/');
      const queryString = searchParams.toString();
      const hash = window.location.hash;

      // Формируем новый путь с нужной локалью
      const newPath = `/${newLocale}${pathWithoutLocale ? `/${pathWithoutLocale}` : ''}${queryString ? `?${queryString}` : ''}${hash}`;

      // Навигация
      router.push(newPath);
    });
  };

  return (
    <div>
      <Select
        value={currentLocale}
        onValueChange={handleChangeLocale}
        disabled={isPending}
      >
        <SelectTrigger className="border !text-inherit !bg-transparent hover:!bg-background/10 shadow-none">
          <SelectValue placeholder="language" />
        </SelectTrigger>
        <SelectContent className="shadow-xl shadow-primary/5">
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
