import { JSX, ReactNode } from 'react';
import { cn } from '@/shared/helpers/class-merger';

type TagType = 'h1' | 'h2' | 'h3' | 'h4' | 'h5' | 'h6' | 'p' | 'small' | 'span';

type VariantsType = Record<TagType, string>;

type PropsType = {
    children?: ReactNode;
    tag?: TagType;
    className?: string;
};
export default function Typography({
                                       children,
                                       tag = 'p',
                                       className,
                                   }: PropsType) {
    const Tag = tag as keyof JSX.IntrinsicElements;
    const variants: VariantsType = {
        h1: 'font-semibold text-lg sm:text-xl md:text-3xl xl:text-5xl',
        h2: 'font-semibold text-lg sm:text-lg md:text-2xl xl:text-4xl',
        h3: 'font-semibold text-md sm:text-lg md:text-xl xl:text-2xl',
        h4: 'font-semibold text-md sm:text-lg md:text-xl xl:text-xl',
        h5: 'font-semibold text-md md:text-lg xl:text-lg',
        h6: 'font-semibold text-md',
        p: 'text-base',
        small: 'text-xs',
        span: 'text-base',
    };

    return <Tag className={cn(variants[tag] || '', className)}>{children}</Tag>;
}
