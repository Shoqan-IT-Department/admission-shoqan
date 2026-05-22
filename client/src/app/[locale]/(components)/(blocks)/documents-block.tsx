import Container from "@/shared/ui/wrappers/container";
import { FileText } from "lucide-react";
import { useTranslations } from "next-intl";
import { Download } from "lucide-react";

const files = [
  {
    title: "Дорожная карта абитуриента 2024",
    href: "https://shokan.edu.kz/documents/1430/%D0%94%D0%BE%D1%80%D0%BE%D0%B6%D0%BD%D0%B0%D1%8F_%D0%BA%D0%B0%D1%80%D1%82%D0%B0_%D0%B0%D0%B1%D0%B8%D1%82%D1%83%D1%80%D0%B8%D0%B5%D0%BD%D1%82%D0%B0_2024_%D1%80%D1%83%D1%81%D1%81.pdf",
  },
];

const DocumentsBlock = () => {
  // const t = useTranslations("HomePage");
  return (
    <Container>
      <section>
        <div className="flex items-end justify-between gap-6">
          <h2 className="text-3xl font-semibold tracking-tight text-primary lg:text-4xl">
            Документы
          </h2>
          <span className="hidden h-px flex-1 translate-y-[-0.6rem] bg-primary/15 sm:block" />
        </div>
        <ul className="mt-8 space-y-4">
          {files.map((f) => (
            <li key={f.title}>
              <a
                href={f.href}
                className="group flex items-center gap-5 rounded-2xl border border-primary/15 bg-card px-6 py-5 shadow-sm transition hover:-translate-y-0.5 hover:border-primary/40 hover:shadow-lg"
              >
                <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-xl bg-primary/10 text-primary transition group-hover:bg-primary group-hover:text-primary-foreground">
                  <FileText className="h-6 w-6" />
                </div>
                <div className="min-w-0 flex-1">
                  <p className="truncate text-base font-medium text-primary lg:text-lg">
                    {f.title}
                  </p>
                </div>
                <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full border border-primary/20 text-primary transition group-hover:border-primary group-hover:bg-primary group-hover:text-primary-foreground">
                  <Download className="h-4 w-4" />
                </div>
              </a>
            </li>
          ))}
        </ul>
      </section>
    </Container>
  );
};

export default DocumentsBlock;
