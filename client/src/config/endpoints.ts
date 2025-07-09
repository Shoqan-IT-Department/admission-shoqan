export const ENDPOINTS = {
    GET: {
        ARTICLE: "/api/articles",
        STATIC_ARTICLE: "/api/static-articles",
        STATIC_INFO: "/api/static-infos?populate=*",
        STATIC_ATTRIBUTES: "/api/static-attributes",
        CONTACTS_COMISSION: "/api/contacts-comissions",
        STATIC_PROGRAMMS:"/api/static-programms",
        PROFESSIONAL_PROGRAMMS:"/api/professions?populate=graduate",
        VALUES_PROFESSIONS:"/api/get-values-professions",
        GRADUATES:"/api/graduates",
        PROFESSIONS:"/api/professions",
        NEWS_ARTICLE:"/api/news-articles?populate=*",
        LINK:"/api/links",
    },
} as const;
