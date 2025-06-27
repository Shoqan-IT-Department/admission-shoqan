

import React, {useEffect, useState} from 'react';
import Container from "@/shared/ui/wrappers/container";
import Logo from "@/widgets/logotype/logo-blue.svg"
import {NAVIGATION_FOOTER} from "@/shared/constants/navigation-footer";
import ViewTransitionWrap from "@/shared/ui/wrappers/view-transition-wrap";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import {getTranslations } from "next-intl/server";
import {useTranslations} from "use-intl";
import Link from "next/link";

type FooterType = {
  instagram: string;
  toogis: string;
  youtube: string;
  linkedin: string;
  facebook: string;
  tiktok: string;
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






export default async function Footer(){


  const t = await getTranslations("HomePage");

  const contents = await getLinks();

  const instagram = contents[0]?.instagram || '';
  const toogis = contents[0]?.toogis || '';
  const youtube = contents[0]?.youtube || '';
  const linkedin = contents[0]?.linkedin || '';
  const facebook = contents[0]?.facebook || '';
  const tiktok = contents[0]?.tiktok || '';



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
          <li className="pb-3"><Link href={toogis}>{t('footer.2gis')}</Link></li>
          <li className="pb-3"><Link href={instagram}>{t('footer.instagram')}</Link></li>
          <li className="pb-3"><Link href={youtube}>{t('footer.youtube')}</Link></li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3"><Link href={linkedin}>{t('footer.instagram')}</Link></li>
          <li className="pb-3"><Link href={facebook}>{t('footer.facebook')}</Link></li>
          <li className="pb-3"><Link href={tiktok}>{t('footer.tiktok')}</Link></li>
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
