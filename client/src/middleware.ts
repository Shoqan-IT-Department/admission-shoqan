import { NextRequest, NextResponse } from 'next/server';
import createMiddleware from 'next-intl/middleware';
import { routing } from './i18n/routing';

const intlMiddleware = createMiddleware(routing);

export function middleware(req: NextRequest) {
  const res = intlMiddleware(req);
  const urlLocale = req.nextUrl.pathname.split('/')[1];
  const cookieLocale = req.cookies.get('NEXT_LOCALE')?.value;

  if (cookieLocale && cookieLocale !== urlLocale) {
    res.headers.set('Set-Cookie', `NEXT_LOCALE=${urlLocale}; Path=/; SameSite=Lax`);
  }

  return res;
}

export const config = {
  matcher: '/((?!api|_next|.*\\..*).*)',
};
