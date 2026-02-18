import { FileText } from "lucide-react";

const DocumentsBlock = () => {
  return (
    <div className="text-2xl font-semibold tracking-tight text-primary">
      <div>
        <h1 className="text-4xl">Документы</h1>
      </div>
      <div className="my-8 p-6 border rounded-4xl hover:bg-ring transition duration-300 ">
        <a href="https://shokan.edu.kz/documents/1430/%D0%94%D0%BE%D1%80%D0%BE%D0%B6%D0%BD%D0%B0%D1%8F_%D0%BA%D0%B0%D1%80%D1%82%D0%B0_%D0%B0%D0%B1%D0%B8%D1%82%D1%83%D1%80%D0%B8%D0%B5%D0%BD%D1%82%D0%B0_2024_%D1%80%D1%83%D1%81%D1%81.pdf">
          <section className="flex justify-start items-center">
            <FileText size={50} color="#004da8" />
            <span className="ml-6">
              <h3 className="text-2xl font-semibold tracking-tight">
                Дорожная карта абитуриента 2024
              </h3>
            </span>
          </section>
        </a>
      </div>
    </div>
  );
};

export default DocumentsBlock;
