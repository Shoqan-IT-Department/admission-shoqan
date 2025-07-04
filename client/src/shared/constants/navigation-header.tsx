'use client';

import { useLocale } from 'use-intl';
import { getPaths } from '@/config/paths';

export const useNavigationHeader = () => {
    const locale = useLocale();
    const PATHS = getPaths(locale);

    return [
        { label: 'home', pathname: PATHS.HOME },
        { label: 'choice', pathname: PATHS.CHOICE },
        { label: 'newsblock', pathname: PATHS.NEWSBLOCK },
        { label: 'commision', pathname: PATHS.COMISSION },
        { label: 'education-programs', pathname: PATHS.EDU_PROGRAMS },
    ] as const;
};
