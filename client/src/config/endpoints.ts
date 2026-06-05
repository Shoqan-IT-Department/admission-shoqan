export const ENDPOINTS = {
  GET: {
    ADMISSION: "admissions",
    CONTACTS: "contacts",
    LIST_DOCUMENTS: "list-documents?populate=*",
    RECEPTIONS: "reseptions",
    HEAD: "heads",
    DOCS: "docs",
    GRADUATES: "graduates",
    PROFESSIONS: "professions",
    HERO_QUESTIONS: "questions-statics",
    QUESTIONS: "questions",
    ERROR: "/errors",
  },
} as const;
