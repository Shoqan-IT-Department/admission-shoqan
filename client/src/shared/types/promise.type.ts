export type AdmissionType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  more: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
};

export type ContactsType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  phone: number;
  address: string;
  room: string;
  schedule: string;
  socialMedia: string;
};

type DocumentItem = {
  id: number;
  title: string;
};

export type ListDocumentsType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  description: string;
  items: DocumentItem[];
};

export type DeadlineType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  year: string;
  days: string;
  consult: string;
  phone: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
  asked: string;
  questions: string;
  nationalExam: string;
  testingExam: string;
};

export type HeadType = {
  id: number;
  documentId: string;
  heading: string;
};

export type DocsType = {
  id: number;
  documentId: string;
  text: string;
  url: string;
};

export type GraduateType = {
  id: number;
  documentId: string;
  graduates: string;
  url: string;
};

export type ProfessionType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string | null;
  code: string;
  form: string | null;
  graduates: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
  url: string | null;
};
