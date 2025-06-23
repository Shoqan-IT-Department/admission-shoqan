import type { Metadata } from "next";
import "./globals.css";
import Header from "@/widgets/header/header";
import Footer from "@/widgets/footer/footer";
import {ThemeProvider} from "@/shared/helpers/theme-provider";
import RoadBlock from "@/app/(components)/(blocks)/road-block";



export const metadata: Metadata = {
  title: "Shoqan News",
  description: "Shoqan",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className="bg-muted-foreground">

      {/*<ThemeProvider*/}
      {/*    attribute="class"*/}
      {/*    defaultTheme="system"*/}
      {/*    enableSystem*/}
      {/*    disableTransitionOnChange*/}
      {/*>*/}
      <Header/>
      <RoadBlock/>
      <main className=''>{children}</main>
      <Footer/>
      {/*</ThemeProvider>*/}
      </body>
    </html>
  );
}
