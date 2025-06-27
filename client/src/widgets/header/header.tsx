'use client'

import Container from "@/shared/ui/wrappers/container";
import { Button } from "@/shared/ui/button";
import "@/app/[locale]/styles.css";
import { Eye, Search, Menu } from "lucide-react";
import { Switch } from "@/shared/ui/switch";
import Logotype from "@/widgets/logotype/logo.svg"
import Link from "next/link";
import {PATHS} from "@/config/paths";
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import PhoneLink from "@/shared/ui/phone-link";
import React, {useState, Suspense} from "react";
import {Input} from "@/shared/ui/input";
import {NAVIGATION_HEADER} from "@/shared/constants/navigation-header";
import MobileMenu from '@/shared/ui/mobile-menu'
import Image from "next/image";
// import {NAVIGATION_HEADER} from "@/shared/constants/navigation-header";


const Header = () => {

      const [isMobileMenuOpen, setMobileMenuOpen] = useState(false)

    return (
        <header>
          <div className="border-b pb-5 mt-5">
            <Container>
              {/* Мобильное меню */}
              <div className="sm:hidden">
                <MobileMenu />
              </div>

              {/* Десктопный хедер */}
              <div className="hidden sm:flex justify-between items-center gap-4">
                {/* Левая часть */}
                <div className="flex gap-2 items-center">
                  <Input className="no-clear-button rounded-xl border-0 hover:shadow-md" type="search" />
                  <Button className="hover:bg-ring text-secondary rounded-2xl hover:shadow-lg">
                    <Search />
                  </Button>
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
              {/*<nav className="flex flex-wrap items-center gap-10">*/}
              {/*  {NAVIGATION_HEADER.map(({ label, pathname }) => (*/}
              {/*      <Link key={pathname} href={pathname}>*/}
              {/*        <small className="text-lg font-medium leading-none hover:border-b-2 border-popover pb-1.5">*/}
              {/*          {label}*/}
              {/*        </small>*/}
              {/*      </Link>*/}
              {/*  ))}*/}
              {/*</nav>*/}
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
