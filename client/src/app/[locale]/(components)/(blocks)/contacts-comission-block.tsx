"use client";

import Link from "next/link";
import { Facebook, Instagram, Linkedin, Youtube } from "lucide-react";
import { FaTiktok } from "react-icons/fa";
import { useTranslations } from "next-intl";

const ContactsComissionBlock = () => {
  const t = useTranslations("HomePage");
  return (
    <div className="my-8">
      <h1 className="text-4xl font-semibold text-primary mb-8">
        {t("contacts.title")}
      </h1>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
        <div className="space-y-6">
          <div>
            <p className="text-base text-foreground mb-2">
              {t("contacts.contact_phone")}
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
            <Link href="https://2gis.kz/kokshetau/search/%D0%A8%D0%BE%D0%BA%D0%B0%D0%BD%20%D1%83%D3%99%D0%BB%D0%B8%D1%85%D0%B0%D0%BD%D0%BE%D0%B2%20%D0%B0%D1%82%D1%8B%D0%BD%D0%B4%D0%B0%D0%B3%D1%8B%20%D1%83%D0%BD%D0%B8%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D1%82%D0%B5%D1%82/firm/70000001033480776/69.371368%2C53.283013">
              <p className="text-base text-foreground mb-2">
                {t("contacts.address")}
              </p>
              <p className="text-lg font-medium text-foreground">
                Казахстан, 020000, г. Кокшетау, ул. Абая, 76,
                <br />
                главный корпус, ауд. 126а,
              </p>
            </Link>
          </div>

          <div>
            <p className="text-base text-foreground mb-2">
              {t("contacts.working_hours")}
            </p>
            <p className="text-lg font-medium text-foreground">
              Казахстан, 020000, г. Кокшетау, ул. Абая, 76,
              <br />
              главный корпус, ауд. 116а,
            </p>
          </div>
        </div>

        <div className="flex justify-start items-start">
          <div className="flex gap-3">
            <Link
              href="https://facebook.com"
              className="w-15 h-15 rounded-full border-2 border-primary 
flex items-center justify-center
transition-all duration-300 ease-in-out
hover:shadow-[0_8px_30px_rgba(0,77,168,0.35)]
hover:-translate-y-1"
            >
              <Facebook
                color="#004da8"
                className="w-5 h-5 hover:text-secondary"
              />
            </Link>
            <Link
              href="https://instagram.com"
              className="w-15 h-15 rounded-full border-2 border-primary 
flex items-center justify-center
transition-all duration-300 ease-in-out
hover:shadow-[0_8px_30px_rgba(0,77,168,0.35)]
hover:-translate-y-1"
            >
              <Instagram color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://linkedin.com"
              color="#004da8"
              className="w-15 h-15 rounded-full border-2 border-primary 
flex items-center justify-center
transition-all duration-300 ease-in-out
hover:shadow-[0_8px_30px_rgba(0,77,168,0.35)]
hover:-translate-y-1"
            >
              <Linkedin color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://youtube.com"
              className="w-15 h-15 rounded-full border-2 border-primary 
flex items-center justify-center
transition-all duration-300 ease-in-out
hover:shadow-[0_8px_30px_rgba(0,77,168,0.35)]
hover:-translate-y-1"
            >
              <Youtube color="#004da8" className="w-5 h-5" />
            </Link>
            <Link
              href="https://tiktok.com"
              className="w-15 h-15 rounded-full border-2 border-primary 
flex items-center justify-center
transition-all duration-300 ease-in-out
hover:shadow-[0_8px_30px_rgba(0,77,168,0.35)]
hover:-translate-y-1"
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
