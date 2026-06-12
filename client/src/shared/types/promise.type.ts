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

export type ErrorsType = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  home: string;
  again: string;
};

export type HeroTextType = {
  id: number;
  documentId: string;
  title: string;
  heading: string;
  paragraph: string;
  placeholder: string;
};

export type CategoryType = {
  id: number;
  documentId: string;
  title: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
};

export type QuestionType = {
  id: number;
  documentId: string;
  title: string;
  text: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
  categories: CategoryType[];
  localizations: [];
};

export type Link = {
  id: number;
  text: string;
  url: string;
};

export type InfoAdmission = {
  id: number;
  documentId: string;
  title: string;
  subtitle: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  locale: string;
  links: Link[];
  localizations: InfoAdmission[];
};

export interface Pagination {
  page: number;
  pageSize: number;
  pageCount: number;
  total: number;
}

export interface Meta {
  pagination: Pagination;
}

export interface InfoAdmissionsResponse {
  data: InfoAdmission[];
  meta: Meta;
}

export interface StrapiMeta {
  pagination: Pagination;
}

export interface StrapiResponse<T> {
  data: T[];
  meta: Meta;
}

export interface ImageFormat {
  ext: string;
  url: string;
  hash: string;
  mime: string;
  name: string;
  path: string | null;
  size: number;
  width: number;
  height: number;
  sizeInBytes: number;
}

export interface ImageFormats {
  large?: ImageFormat;
  medium?: ImageFormat;
  small?: ImageFormat;
  thumbnail?: ImageFormat;
}

export interface ImagesType {
  id: number;
  documentId: string;
  name: string;
  alternativeText: string | null;
  caption: string | null;
  focalPoint: null;
  width: number;
  height: number;
  formats: ImageFormats;
  hash: string;
  ext: string;
  mime: string;
  size: number;
  url: string;
  previewUrl: string | null;
  provider: string;
  provider_metadata: null;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}

export interface ImageResponse {
  id: number;
  documentId: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  image: ImagesType;
}
