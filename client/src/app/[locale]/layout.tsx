import {NextIntlClientProvider, hasLocale} from 'next-intl';
import {notFound} from 'next/navigation';
import {routing} from '@/i18n/routing';
import type { Metadata } from "next";
import "./globals.css";
import Header from "@/widgets/header/header";
import Footer from "@/widgets/footer/footer";
// import {ThemeProvider} from "@/shared/helpers/theme-provider";


export const metadata: Metadata = {
  title: "Admission Shokan",
  description: "Shokan",
};


export default async function LocaleLayout({
  children,
  params
}: {
  children: React.ReactNode;
  params: Promise<{locale: string}>;
}) {
  // Ensure that the incoming `locale` is valid
  const {locale} = await params;
  if (!hasLocale(routing.locales, locale)) {
    notFound();
  }
 
  return (
    <html
        lang={locale}
        suppressHydrationWarning
        translate='no'
        className='select-none'
    >
      <body className="bg-muted-foreground">
        <NextIntlClientProvider>
          <Header/>
      <main className=''>{children}</main>
      <Footer/>
      </NextIntlClientProvider>
      </body>
    </html>
  );
}
