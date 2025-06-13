'use client'

import React, {useTransition} from 'react';
import {LANGUAGES} from "@/config/languages";
import {Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,} from "@/shared/ui/select";
import {useRouter, usePathname, useSearchParams} from "next/navigation";




const LocaleSwitcher = () => {

    // const locale = useLocale();
    const [isPending, startTransition] = useTransition();
    const router = useRouter();
    const pathname = usePathname();
    const searchParams = useSearchParams();

    const handleChangeLocale = (newLocale: string) => {
        startTransition(() => {
            const currentPath = pathname.split('/').slice(2).join('/');
            const queryString = searchParams.toString();
            const hash = window.location.hash;
            const newPath = `/${newLocale}/${currentPath}${queryString ? `?${queryString}` : ''}${hash}`;

            router.push(newPath);
        });
    };


    return (
        <div>
            <Select
                value={''}
                onValueChange={handleChangeLocale}
                disabled={isPending}
            >
                <SelectTrigger className='!text-secondary border-1 !border-ring hover:!bg-ring rounded-lg select-none'>
                    <SelectValue placeholder='language' />
                </SelectTrigger>
                <SelectContent className='shadow-xl shadow-primary/5'>
                    {LANGUAGES.map((lng) => (
                        <SelectItem
                            key={lng.id}
                            value={lng.code}
                        >
                            {lng.label}
                        </SelectItem>
                    ))}
                </SelectContent>
            </Select>
        </div>
    );
};

export default LocaleSwitcher;