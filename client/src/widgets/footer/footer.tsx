'use client'

import React, {useEffect, useState} from 'react';
import Container from "@/shared/ui/wrappers/container";
import Logo from "@/widgets/logotype/logo-blue.svg"
import {NAVIGATION_FOOTER} from "@/shared/constants/navigation-footer";
import ViewTransitionWrap from "@/shared/ui/wrappers/view-transition-wrap";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import { getTranslations } from "next-intl/server";
import {useTranslations} from "use-intl";

type FooterType = {
  title: string;
  email: string;
  locales: string;
  number: string;
  dayswork: string;
  more: string;
  doc: string;
  med: string;
  identifycard: string;
  photos: string;
  card: string;
  certificate: string;
  grant: string;
  envelope: string;
  sectitle: string;
  instagram: string;
  instaurl: string;
  toogis: string;
  toogisurl: string;
}









const Footer = () => {

  const t =  useTranslations("HomePage");
  const [content, setContent] = useState([]);

  useEffect(() => {
    try {
      ADM_URL.get(ENDPOINTS.GET.LINK).then((res) => {
        setContent(res.data.data);
      });
    } catch (err) {
      console.error('Ошибка при получении данных:', err);
    }
  }, []);


    return (
        // <ViewTransitionWrap name="footer">
            <footer className="bg-popover w-full">
  <Container>
    {/* Первый блок */}
      <div>
        {/* <Logo /> */}
      </div>

    {/* Второй блок */}
    <div className=" select-none grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 pt-10 text-primary pb-10 border-b ">
      <div>
        <nav>
          <h2 className="scroll-m-20 text-2xl font-semibold tracking-tight ">
            {t('footer.title')}
          </h2>
        </nav>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3">{t('footer.news')}</li>
          <li className="pb-3">{t('footer.university')}</li>
          <li className="pb-3">{t('footer.prof')}</li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3">{t('footer.contact')}</li>
          <li className="pb-3">{t('footer.document')}</li>
          <li className="pb-3">{t('footer.news')}</li>
        </ul>
      </div>
    </div>
    <div className=" select-none grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 pt-10 text-primary pb-10 border-b ">
      <div>
        <nav>
          <h2 className="scroll-m-20 text-2xl font-semibold tracking-tight ">
            {t('footer.social')}
          </h2>
        </nav>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3">{t('footer.2gis')}</li>
          <li className="pb-3">{t('footer.instagram')}</li>
          <li className="pb-3">{t('footer.youtube')}</li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3">{t('footer.linkedin')}</li>
          <li className="pb-3">{t('footer.facebook')}</li>
          <li className="pb-3">{t('footer.mail')}</li>
        </ul>
      </div>
    </div>

    {/* Третий блок */}
    <div className="flex flex-col sm:flex-row justify-center items-center pt-10 pb-10 text-primary text-center text-sm gap-4">
      <p>{t('footer.copyright')}</p>
    </div>
  </Container>
</footer>

        // </ViewTransitionWrap>

    );
};

export default Footer;