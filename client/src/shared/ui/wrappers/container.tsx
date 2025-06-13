import { cn } from '@/shared/helpers/class-merger';
import { WrapperPropsType } from '@/shared/types/wrapper.type';

export default function Container({ children, className }: WrapperPropsType) {
    return (
        <main
            className={cn(
                'container max-w-[1920px] px-4 md:px-2 mx-auto transition-all duration-1000',
                className,
            )}
        >
            {children}
        </main>
    );
}
