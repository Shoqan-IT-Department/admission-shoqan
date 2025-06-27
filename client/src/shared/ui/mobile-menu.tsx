'use client'

import { Dialog } from '@headlessui/react'
import {X, Search, Menu} from 'lucide-react'
import Link from 'next/link'
import { Input } from '@/shared/ui/input'
import { Button } from '@/shared/ui/button'
import { Switch } from '@/shared/ui/switch'
import PhoneLink from "@/shared/ui/phone-link";
import LocaleSwitcher from "@/widgets/locale-switcher/locale-switcher";
import {NAVIGATION_HEADER} from "@/shared/constants/navigation-header";
import {Sheet, SheetContent, SheetFooter, SheetTitle, SheetTrigger} from "@/shared/ui/sheet";
import {useState, Suspense} from "react";

type MobileMenuProps = {
  open: boolean
  onClose: () => void
}

export default function MobileMenu() {
  const [open, setOpen] = useState(false);
  return (
      <Sheet open={open} onOpenChange={setOpen}>
        <div className="flex sm:hidden items-center justify-between w-full px-2 py-4">
          <Input placeholder="Поиск..." className="rounded-xl border-none shadow-md w-full" />
          <SheetTrigger asChild>
            <Button variant="ghost" className="ml-2">
              <Menu />
            </Button>
          </SheetTrigger>
        </div>

        <SheetContent side="left" className="p-4 flex flex-col gap-4 sm:hidden">
            <SheetTitle>
                <Input placeholder="Поиск..." className="rounded-xl border-none shadow-md max-w-[350px]" />
            </SheetTitle>
          <nav className="flex flex-col gap-2 mt-4">
            {NAVIGATION_HEADER.map(({ label, pathname }) => (
                <Link key={pathname} href={pathname} className="text-lg font-medium hover:underline">
                  {label}
                </Link>
            ))}
          </nav>
            <SheetFooter>
                <div className="flex justify-between items-center ">
                    <Suspense fallback={<div>Loading...</div>}>
                        <LocaleSwitcher />
                    </Suspense>
                    <Switch id="lang-switch" />
                </div>
            </SheetFooter>
        </SheetContent>
      </Sheet>
  )
}
