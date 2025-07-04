'use client'

import Container from "@/shared/ui/wrappers/container";
import { Button } from "@/shared/ui/button";
import "@/app/[locale]/styles.css";
import { Search } from "lucide-react";
import Logotype from "@/widgets/logotype/logo.svg"
import Link from "next/link";
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import PhoneLink from "@/shared/ui/phone-link";
import React, {useState, Suspense, useEffect} from "react";
import MobileMenu from '@/shared/ui/mobile-menu'
import {useNavigationHeader} from "@/shared/constants/navigation-header";
import {useLocale, useTranslations} from "use-intl";
import {getPaths} from "@/config/paths";
// import {NAVIGATION_HEADER} from "@/shared/constants/navigation-header";


const Header = () => {
    const locale = useLocale();         // ✅ client hook
    const t = useTranslations('Header');
    const PATHS = getPaths(locale);
    const navItems = useNavigationHeader();
    // const [showHeader, setShowHeader] = useState(true);
    // const [lastScrollY, setLastScrollY] = useState(0);
    //
    // useEffect(() => {
    //     const handleScroll = () => {
    //         const currentScrollY = window.scrollY;
    //
    //         if (currentScrollY > lastScrollY && currentScrollY > 50) {
    //             // Скролл вниз
    //             setShowHeader(false);
    //         } else {
    //             // Скролл вверх
    //             setShowHeader(true);
    //         }
    //
    //         setLastScrollY(currentScrollY);
    //     };
    //
    //     window.addEventListener('scroll', handleScroll);
    //
    //     return () => window.removeEventListener('scroll', handleScroll);
    // }, [lastScrollY]);

    return (
        // <header className={`bg-muted-foreground sticky top-0 left-0 w-full z-50 transition-transform duration-300 ${
        //     showHeader ? 'translate-y-0' : '-translate-y-full'
        // }`}>
        <header>
          <div className="border-b pb-3 pt-3">
            <Container>
              {/* Мобильное меню */}
              <div className="sm:hidden flex items-center justify-end">
                
                <MobileMenu />
                  <Suspense fallback={<div>Loading...</div>}>
                        <LocaleSwitcher />
                  </Suspense>
              </div>

              {/* Десктопный хедер */}
              <div className="hidden sm:flex justify-between items-center gap-4">
                {/* Левая часть */}
                <div className="flex gap-2 items-center">

                  {/*<Button className="hover:bg-ring text-secondary rounded-2xl hover:shadow-lg">*/}
                  {/*  <Search />*/}
                  {/*</Button>*/}
                  {/*<Switch id="switcher-lang" />*/}
                </div>

                {/* Центр: контакты */}
                <div className="flex gap-2 text-secondary items-center">
                  <nav className="flex text-foreground items-center gap-4 flex-wrap">
                    <PhoneLink number="+77471001930" />
                      <Suspense fallback={<div>Loading...</div>}>
                          <LocaleSwitcher/>
                      </Suspense>
                  </nav>
                </div>
              </div>
            </Container>
          </div>

          {/* Навигация (только для sm и выше) */}
          <Container>
            <div className="hidden sm:flex justify-between items-center gap-4 mt-6">
              <Link href={PATHS.HOME}>
                <Logotype />
              </Link>
              <nav className="flex flex-wrap items-center gap-10">
                  {navItems.map(({ label, pathname }) => (
                      <Link key={pathname} href={pathname}>
                          <small className="relative inline-block text-lg font-medium leading-none cursor-pointer group pb-1.5">
                              <span className="relative z-10">{t(label)}</span>
                              <span className="absolute bottom-0 left-0 w-full h-[2px] bg-popover scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300" />
                          </small>
                      </Link>
                  ))}
              </nav>
            </div>
          </Container>
        </header>

        // <header>
            //     <div className="border-b pb-5 mt-5">
            //     <Container>
            //         <div className="flex justify-between items-centerx">
            //             <div className="flex gap-4 text-secondary items-center">
            //                 <nav className="flex text-foreground items-center gap-4">
            //                     <LocaleSwitcher/>
            //                     <PhoneLink number="+77471001930"/>
            //                 </nav>
            //             </div>
            //             <div className="flex gap-2">
            //                 <Button className="text-secondary border-1 border-ring hover:bg-ring rounded-lg">
            //                     <Search />
            //                 </Button>
            //                 <Button className="text-secondary border-1 border-ring hover:bg-ring rounded-lg">
            //                     <Eye />
            //                 </Button>
            //                 <Switch id="switcher-lang" className="mt-2" />
            //             </div>
            //         </div>
            //     </Container>
            //     </div>
            //     <Container>
            //         <div className="flex justify-between items-center mt-6.5">
            //             <div>
            //                 <Link href={PATHS.HOME}>
            //                     <Logo/>
            //                 </Link>
            //             </div>
            //             <nav className="flex items-center gap-10">
            //
            //             </nav>
            //         </div>
            //     </Container>
            // </header>
);
};

export default Header;
