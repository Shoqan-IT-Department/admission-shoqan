'use client'

import {Menu} from 'lucide-react'
import { Input } from '@/shared/ui/input'
import { Button } from '@/shared/ui/button'
import { Switch } from '@/shared/ui/switch'
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import {Sheet, SheetContent, SheetFooter, SheetTitle, SheetTrigger} from "@/shared/ui/sheet";
import React, {useState, Suspense} from "react";
import {useNavigationHeader} from "@/shared/constants/navigation-header";
import Link from "next/link";
import {useTranslations} from "use-intl";
import Logo from "@/widgets/logotype/logo.svg"
import {usePathname, useRouter} from "next/navigation";


export default function MobileMenu() {
    const t = useTranslations('Header');
    const [open, setOpen] = useState(false);
    const router = useRouter();
    const currentPath = usePathname();
    const navItems = useNavigationHeader();

    const handleClick = (targetPath: string) => {
        setOpen(false); // Закрываем меню

        setTimeout(() => {
            if (targetPath.startsWith('#')) {
                // Якорь на этой же странице
                const element = document.querySelector(targetPath);
                if (element) element.scrollIntoView({ behavior: 'smooth' });
                return;
            }

            const [base, hash] = targetPath.split('#');

            if (base === currentPath && hash) {
                // Текущая страница с якорем
                const el = document.getElementById(hash);
                if (el) el.scrollIntoView({ behavior: 'smooth' });
                return;
            }

            // Иначе — переход на другую страницу
            router.push(targetPath);
        }, 300); // Подождать, пока Sheet успеет закрыться
    };

    return (
        <Sheet open={open} onOpenChange={setOpen}>
            <div className="flex sm:hidden items-center justify-between w-full px-2 py-4">
                <SheetTrigger asChild>
                    <Button variant="ghost" className="ml-2">
                        <Menu />
                    </Button>
                </SheetTrigger>
            </div>

            <SheetContent
                aria-describedby={undefined}
                side="left"
                className="p-4 flex flex-col gap-4 sm:hidden"
            >
                <SheetTitle />

                <nav className="flex flex-col gap-2 mt-4">
                    {navItems.map(({ label, pathname }) => (
                        <Link key={pathname} href={pathname}>
                            <small className="relative inline-block text-lg font-medium leading-none cursor-pointer group pb-1.5">
                                <span className="relative z-10">{t(label)}</span>
                                <span className="absolute bottom-0 left-0 w-full h-[2px] bg-popover scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300" />
                            </small>
                        </Link>
                    ))}
                </nav>
            </SheetContent>
        </Sheet>
    );
}