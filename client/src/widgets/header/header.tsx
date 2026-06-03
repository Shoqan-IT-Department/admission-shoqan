"use client";

import Container from "@/shared/ui/wrappers/container";
import { Link } from "@/i18n/navigation";
import { PATHS } from "@/config/paths";
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import React, { Suspense, useEffect, useState } from "react";
import MobileMenu from "@/shared/ui/mobile-menu";
import { NAVIGATION_HEADER } from "@/shared/constants/navigation-header";
import { useTranslations } from "use-intl";
import { Logo } from "@/shared/logo/logo";

const Header = () => {
  const t = useTranslations("Header");
  const [isVisible, setIsVisible] = useState(true);
  const [lastScrollY, setLastScrollY] = useState(0);

  useEffect(() => {
    const handleScroll = () => {
      const currentScrollY = window.scrollY;
      if (currentScrollY < 10) {
        setIsVisible(true);
      } else if (currentScrollY > lastScrollY) {
        setIsVisible(false);
      } else {
        setIsVisible(true);
      }
      setLastScrollY(currentScrollY);
    };

    window.addEventListener("scroll", handleScroll, { passive: true });
    return () => window.removeEventListener("scroll", handleScroll);
  }, [lastScrollY]);
  return (
    <header
      className={`fixed top-0 left-0 right-0 z-50 bg-primary transition-transform duration-300 ${
        isVisible ? "translate-y-0" : "-translate-y-full"
      }`}
    >
      <div className="pb-3 pt-3">
        <Container>
          <div className="sm:hidden flex items-center justify-end">
            <MobileMenu />
            <Suspense fallback={<div>Loading...</div>}>
              <LocaleSwitcher />
            </Suspense>
          </div>

          <div className="hidden sm:flex justify-between items-center gap-4">
            <div className="flex gap-2 items-center">
              <Link href={PATHS.HOME}>
                <Logo />
              </Link>
            </div>
            <div className="hidden lg:flex sm:flex justify-center items-center gap-4 my-6 text-secondary">
              <nav className="flex justify-center items-center gap-10">
                {NAVIGATION_HEADER.map(({ label, pathname }) => (
                  <Link key={pathname} href={pathname}>
                    <small className="relative inline-block text-lg font-medium leading-none cursor-pointer group pb-1.5">
                      <span className="relative z-10 hover:text-[#FAD713] transition duration-300">
                        {t(`${label}`)}
                      </span>
                    </small>
                  </Link>
                ))}
              </nav>
            </div>
            <div className="flex gap-2 text-secondary items-center">
              <nav className="flex text-foreground items-center gap-4 flex-wrap">
                <Suspense fallback={<div>Loading...</div>}>
                  <LocaleSwitcher />
                </Suspense>
              </nav>
            </div>
          </div>
        </Container>
      </div>

      {/* <Container>
        <div className="hidden lg:flex sm:flex justify-center items-center gap-4 my-6 text-secondary">
          <nav className="flex justify-center items-center gap-10">
            {NAVIGATION_HEADER.map(({ label, pathname }) => (
              <Link key={pathname} href={pathname}>
                <small className="relative inline-block text-lg font-medium leading-none cursor-pointer group pb-1.5">
                  <span className="relative z-10 hover:text-[#FAD713] transition duration-300">
                    {t(label)}
                  </span>
                </small>
              </Link>
            ))}
          </nav>
        </div>
      </Container> */}
    </header>
  );
};

export default Header;
