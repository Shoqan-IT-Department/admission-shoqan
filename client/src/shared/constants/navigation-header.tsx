import { PATHS } from '@/config/paths';


export const NAVIGATION_HEADER = [
    {
        label: 'Admission',
        pathname: PATHS.ADMISSION,

    },
    {
        label: 'University',
        pathname: PATHS.UNIVERSITY,
    },
    {
        label: 'Education',
        pathname: PATHS.EDUCATION,
    },
    {
        label: 'Science',
        pathname: PATHS.SCIENCE,

    },
] as const;
