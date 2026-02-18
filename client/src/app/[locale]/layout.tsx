import { NextIntlClientProvider, hasLocale } from "next-intl";
import { notFound } from "next/navigation";
import { routing } from "@/i18n/routing";
import type { Metadata } from "next";
import "./globals.css";
import Header from "@/widgets/header/header";
import Footer from "@/widgets/footer/footer";
import { Suspense } from "react";
import LoaderSkeleton from "@/shared/ui/loader-skeleton";
// import {ThemeProvider} from "@/shared/helpers/theme-provider";

export const metadata: Metadata = {
  title: "Приемная комиссия",
  description: "Приемная комиссия университета им. Шокана Уалиханова",
  icons: {
    icon: "/favicon.png",
  },
};
export default async function LocaleLayout({
  children,
  params,
}: {
  children: React.ReactNode;
  params: Promise<{ locale: string }>;
}) {
  // Ensure that the incoming `locale` is valid
  const { locale } = await params;
  if (!hasLocale(routing.locales, locale)) {
    notFound();
  }
  return (
    <html
      lang={locale}
      suppressHydrationWarning
      translate="no"
      className="select-none"
    >
      <body className="bg-primary">
        <NextIntlClientProvider>
          <Header />
          <Suspense fallback={<LoaderSkeleton />}>
            <main className="bg-secondary rounded-[54px] text-foreground">
              {children}
            </main>
          </Suspense>
          <Footer className="" />
        </NextIntlClientProvider>
      </body>
    </html>
  );
}
