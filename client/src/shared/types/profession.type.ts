export interface Meta {
  type: string;
  detail_url: string;
  html_url: string;
  slug: string;
  show_in_menus: boolean;
  seo_title: string;
  search_description: string;
  first_published_at: string;
  alias_of: string | null;
  parent: {
    id: number;
    meta: {
      type: string;
      html_url: string;
    };
    title: string;
  };
  locale: string;
}

export interface ImageMeta {
  type: string;
  detail_url: string;
  download_url: string;
}

export interface Image {
  id: number;
  meta: ImageMeta;
  title: string;
}

export interface InformationValue {
  heading: string;
  text: string;
}

export interface InformationBlock {
  type: "information";
  value: InformationValue;
  id: string;
}

export interface FileElement {
  heading: string;
  documents: number[];
}

export interface FilesValue {
  elements: FileElement[];
}

export interface FilesBlock {
  type: "files";
  value: FilesValue;
  id: string;
}

export interface YearsOfStudy {
  id: number;
  meta: {
    type: string;
  };
}

export interface ProfileSubjects {
  id: number;
  meta: {
    type: string;
  };
}

export interface ChairMeta {
  type: string;
}

export interface ChairRef {
  id: number;
  meta: ChairMeta;
}

export interface ChairRelationship {
  id: number;
  meta: {
    type: string;
  };
  chair: ChairRef;
}

export interface CourseTableRow {
  [key: string]: unknown;
}

export interface EducationalProgramType {
  id: number;
  meta: Meta;
  title: string;
  dual_diploma: boolean;
  greeting_image: Image;
  index: string;
  form: "full_time" | "part_time" | string;
  language: string[];
  goals: string; // HTML
  info_image: Image;
  information: InformationBlock[];
  main_courses: string; // HTML
  elective_courses: string; // HTML
  main_courses_table: CourseTableRow[];
  elective_courses_table: CourseTableRow[];
  results: string; // HTML
  files: FilesBlock[];
  news_tags: string[] | null;
  menu: unknown[];
  years: YearsOfStudy;
  profile_subjects: ProfileSubjects;
  test_score: number;
  degree_awarded: string | null;
  accreditations: unknown[];
  chairs: ChairRelationship[];
}

export interface EducationalProgramListItem {
  id: number;
  meta: Pick<
    Meta,
    | "type"
    | "detail_url"
    | "html_url"
    | "slug"
    | "first_published_at"
    | "locale"
  >;
  title: string;
  dual_diploma: boolean;
  index: string;
  form: "full_time" | "part_time" | string;
  language: string[];
  profile_subjects_list: string[];
  level_name: string;
  form_name: string;
}

export interface ProgramsResponse {
  meta: {
    total_count: number;
  };
  items: EducationalProgramListItem[];
}
