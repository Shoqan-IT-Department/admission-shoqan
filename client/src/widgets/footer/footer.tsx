import React from 'react';
import Container from "@/shared/ui/wrappers/container";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import {getTranslations } from "next-intl/server";
import Logotype from "@/widgets/logotype/logo.svg"
import Link from "next/link";
import {
  FaInstagram,
  FaFacebookF,
  FaYoutube,
  FaLinkedinIn,
  FaTelegramPlane,
  FaTiktok
} from 'react-icons/fa';
import {CiMap} from "react-icons/ci";

type FooterType = {
  instagram: string;
  toogis: string;
  youtube: string;
  linkedin: string;
  facebook: string;
  tiktok: string;
}


type CommisionContactsType = {
  email: string;
  locales: string;
  number: string;
}

async function getLinks(): Promise<FooterType[]> {
  try {
    const res = await ADM_URL.get<{ data: FooterType[] }>(ENDPOINTS.GET.LINK);
    return res.data.data;
  } catch (err) {
    console.error('Ошибка при получении статьи:', err);
    return [];
  }
}
async function getCommission(): Promise<CommisionContactsType[]> {
  try {
    const res = await ADM_URL.get<{ data: CommisionContactsType[] }>(ENDPOINTS.GET.CONTACTS_COMISSION);
    return res.data.data;
  } catch (err) {
    console.error('Ошибка при получении статьи:', err);
    return [];
  }
}





export default async function Footer(){


  const t = await getTranslations("Footer");

  const contents = await getLinks();
  const comission = await getCommission();

  const instagram = contents[0]?.instagram || '';
  const toogis = contents[0]?.toogis || '';
  const youtube = contents[0]?.youtube || '';
  const linkedin = contents[0]?.linkedin || '';
  const facebook = contents[0]?.facebook || '';
  const mail = comission[0]?.email || '';
  const locales = comission[0]?.locales || '';
  const number = comission[0]?.number || '';




  return (
        // <ViewTransitionWrap name="footer">
            <footer className="bg-popover w-full position-fixed">
  <Container>

    <div className="max-w-[2000 px] mx-auto px-4 space-y-12 pt-10 pb-12">

      {/* ===== Первая строка: Логотип, Контакты, Соцсети ===== */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
        {/* Логотип */}
        <div>
          <Logotype />
        </div>

        {/* Контакты */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary">
            {t("contact.title")}
          </h3>
          <p className="leading-7 font-semibold text-primary ">
            
          </p>
          <p className="leading-7 font-semibold text-primary ">
            {mail}
          </p>
        </div>

        {/* Соцсети */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-2">
            Социальные сети
          </h3>
          <div className="flex gap-4 text-xl text-primary">
            <Link href={toogis}><CiMap /></Link>
            <Link href={instagram}><FaInstagram /></Link>
            <Link href={youtube}><FaYoutube /></Link>
            <Link href={linkedin}> <FaLinkedinIn /></Link>
            <Link href={facebook}><FaFacebookF /></Link>
          </div>
        </div>
      </div>

      {/* ===== Вторая строка: Школы / Поступающим / Дополнительно ===== */}
      <div className="grid grid-cols-1 sm:grid-cols-3 gap-8">
        {/* Школы */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-3">
            {t("school.title")}
          </h3>
          <ul className="space-y-1 text-primary font-semibold ">
            <Link href={"https://shokan.edu.kz/ru/schools/agrotehnicheskij-institut-im-sadvakasova/"}> <li>{t("school.agro")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/schools/pedagogical-institute/"}><li> {t("school.ped")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/schools/vysshaya-shkola-mediciny/"}><li>{t("school.med")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/schools/vysshaya-shkola-biznesa-i-prava/"}> <li>{t("school.business")}</li></Link>
          </ul>
        </div>

        {/* Поступающим */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-3 ">
            {t("incoming.title")}
          </h3>
          <ul className="space-y-1 text-primary font-semibold ">
            <Link href={"https://shokan.edu.kz/ru/undergraduate/"}><li>{t("incoming.bacalaur")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/graduate/"}><li>{t("incoming.magistracy")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/phd/"}><li>{t("incoming.doctor")}</li></Link>

          </ul>
        </div>

        {/* Дополнительно */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-3">
            {t("additionally")}
          </h3>
          <ul className="space-y-1 text-primary font-semibold ">
            <Link href={"https://shokan.edu.kz/ru/e-university/"}><li>{t("electronic")}</li></Link>
          </ul>
        </div>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-3 gap-8 font-semibold ">
        {/* Приемная комиссия */}
        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-2">
            {t("commision.title")}
          </h3>
          <p className="leading-7 font-semibold text-primary">
           <Link href="tel:+77471001930">+77471001930</Link>
          </p>
        </div>

        <div>
          <h3 className="scroll-m-20 text-2xl font-semibold tracking-tight text-primary mb-2">
            {t("student.title")}
          </h3>
          <ul className="space-y-1 text-primary font-semibold ">
            <Link href={"https://shokan.edu.kz/ru/student-life/struktura-departamenta-molodezhnoj-politiki/"}><li>{t("student.structure")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/student-life/psychologist-blog/"}><li>{t("student.psychology")}</li></Link>
            <Link href={"https://shokan.edu.kz/ru/student-life/obshezhitiya/"}><li>{t("student.dormitories")}</li></Link>
          </ul>
        </div>
      </div>
    </div>

{/*<div className=" select-none grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 pt-10 text-primary pb-10 ">*/}
    {/*  <div>*/}
    {/*    <span>*/}
    {/*      <h2 className="scroll-m-20 text-2xl font-semibold tracking-tight ">*/}
    {/*      </h2>*/}
    {/*    </span>*/}
    {/*  </div>*/}
    {/*  <div>*/}
    {/*    <ul>*/}
    {/*      <li></li>*/}
    {/*    </ul>*/}
    {/*    <ul className="flex gap-4">*/}
    {/*      <li className="pb-3"><Link href={toogis}><Map /></Link></li>*/}
    {/*      <li className="pb-3"><Link href={instagram}><Instagram /></Link></li>*/}
    {/*      <li className="pb-3"><Link href={youtube}><Youtube /></Link></li>*/}
    {/*      <li className="pb-3"><Link href={linkedin}><Linkedin /></Link></li>*/}
    {/*      <li className="pb-3"><Link href={facebook}><Facebook /></Link></li>*/}
    {/*    </ul>*/}
    {/*  </div>*/}
    {/*  <div>*/}
    {/*    <ul className="space-y-2">*/}
    {/*    </ul>*/}
    {/*  </div>*/}
    {/*</div>*/}

    {/* Третий блок */}

  </Container>
              <div className="flex  border-t flex-col sm:flex-row justify-center items-center pt-3 pb-3 text-primary text-center text-sm gap-4">
                <p>{t('copyright')}</p>
              </div>
</footer>

        // </ViewTransitionWrap>

    );
};
