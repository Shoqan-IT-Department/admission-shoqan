import { PATHS } from '@/config/paths';


export const NAVIGATION_HEADER = [
    {
        label: 'home',
        pathname: PATHS.HOME,

    },
    {
        label: 'choice',
        pathname: PATHS.CHOICE,

    },
    {
        label: 'newsblock',
        pathname: PATHS.NEWSBLOCK,
    },
    {
        label: 'commision',
        pathname: PATHS.COMISSION,
    },
    {
        label: 'education-programs',
        pathname: PATHS.EDU_PROGRAMS,
    },
] as const;
