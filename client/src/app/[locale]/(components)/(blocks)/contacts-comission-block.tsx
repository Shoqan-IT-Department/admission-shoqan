import Link from "next/link";
import { getTranslations } from "next-intl/server";
import { Facebook, Instagram, Linkedin, Youtube } from "lucide-react";
import { FaTiktok } from "react-icons/fa";

const ContactsComissionBlock = async () => {
  const t = await getTranslations("HomePage");

  return (
    <div className="">
      <h1 className="text-4xl font-semibold text-primary my-8">
        Контакты приемной комиссии
      </h1>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
        <div className="space-y-6">
          <div>
            <p className="text-base text-foreground mb-2">
              Номер телефона для связи
            </p>
            <Link
              href="tel:8-778-396-76-78"
              className="text-lg font-semibold text-foreground hover:text-primary transition-colors"
            >
              8-778-396-76-78
            </Link>
          </div>
        </div>

        <div className="space-y-6">
          <div>
            <p className="text-base text-foreground mb-2">Адрес</p>
            <p className="text-lg font-medium text-foreground">
              Казахстан, 020000, г. Кокшетау, ул. Абая, 76,
              <br />
              главный корпус, ауд. 116а,
            </p>
          </div>

          <div>
            <p className="text-base text-foreground mb-2">График работы</p>
            <p className="text-lg font-medium text-foreground">
              Казахстан, 020000, г. Кокшетау, ул. Абая, 76,
              <br />
              главный корпус, ауд. 116а,
            </p>
          </div>
        </div>

        <div className="flex justify-center items-start">
          <div className="flex gap-3">
            <Link
              href="https://facebook.com"
              className="w-15 h-15 rounded-full border-2 border-primary flex items-center justify-center  hover:text-white transition-colors"
            >
              <Facebook
                color="#004da8"
                className="w-5 h-5 hover:text-secondary"
              />
            </Link>
            <Link
              href="https://instagram.com"
              className="w-15 h-15 rounded-full border-2 border-primary flex items-center justify-center   transition-colors"
            >
              <Instagram color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://linkedin.com"
              color="#004da8"
              className="w-15 h-15 rounded-full border-2 border-primary flex items-center justify-center   transition-colors"
            >
              <Linkedin color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://youtube.com"
              className="w-15 h-15 rounded-full border-2 border-primary flex items-center justify-center   transition-colors"
            >
              <Youtube color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://tiktok.com"
              className="w-15 h-15 rounded-full border-2 border-primary flex items-center justify-center  transition-colors"
            >
              <FaTiktok color="#004da8" className="w-5 h-5" />
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ContactsComissionBlock;
