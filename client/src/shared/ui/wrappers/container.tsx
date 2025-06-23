import { cn } from '@/shared/helpers/class-merger';
import { WrapperPropsType } from '@/shared/types/wrapper.type';

export default function Container({ children, className }: WrapperPropsType) {
    return (
        <main
            className={cn(
                 'w-full max-w-[1920px] px-0 sm:px-4 mx-auto transition-all duration-1000',className,
            )}
        >
            {children}
        </main>
    );
}
