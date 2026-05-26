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
