'use client'

import {Menu} from 'lucide-react'
import { Input } from '@/shared/ui/input'
import { Button } from '@/shared/ui/button'
import { Switch } from '@/shared/ui/switch'
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import {Sheet, SheetContent, SheetFooter, SheetTitle, SheetTrigger} from "@/shared/ui/sheet";
import React, {useState, Suspense} from "react";
import {NAVIGATION_HEADER} from "@/shared/constants/navigation-header";
import Link from "next/link";
import {useTranslations} from "use-intl";
import Logo from "@/widgets/logotype/logo.svg"
import {usePathname, useRouter} from "next/navigation";


export default function MobileMenu() {
    const t = useTranslations('Header');
    const [open, setOpen] = useState(false);
    const router = useRouter();
    const currentPath = usePathname();

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
                    {NAVIGATION_HEADER.map(({ label, pathname }) => (
                        <button
                            key={pathname}
                            onClick={() => handleClick(pathname)}
                            className="text-left"
                        >
                            <small className="text-lg font-medium leading-none hover:border-b-2 border-popover pb-1.5">
                                {t(label)}
                            </small>
                        </button>
                    ))}
                </nav>
            </SheetContent>
        </Sheet>
    );
}