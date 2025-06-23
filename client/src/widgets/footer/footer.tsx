import React from 'react';
import Container from "@/shared/ui/wrappers/container";
import Logo from "@/widgets/logotype/logo-blue.svg"
import {NAVIGATION_FOOTER} from "@/shared/constants/navigation-footer";
import ViewTransitionWrap from "@/shared/ui/wrappers/view-transition-wrap";






const Footer = () => {
    return (
        // <ViewTransitionWrap name="footer">
            <footer className="bg-popover w-full">
  <Container>
    {/* Первый блок */}
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mt-10 text-primary pb-10 pt-10 border-b border-secondary">
      <div>
        {/* <Logo /> */}
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3 font-medium">Поступающим</li>
          <li className="pb-3">Университет</li>
          <li>Наука и инновации</li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3 font-medium">Обучающимся</li>
          <li className="pb-3">Факультеты и кафедры</li>
          <li>Услуги</li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3 font-medium">Сотрудникам</li>
          <li className="pb-3">Довузовская подготовка</li>
          <li>Сотрудничество</li>
        </ul>
      </div>
    </div>

    {/* Второй блок */}
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 pt-10 text-primary pb-10 border-b border-secondary">
      <div>
        <nav>
          <h2 className="scroll-m-20 text-2xl font-semibold tracking-tight">
            Учись. <span className="text-chart-4">Исследуй.</span> Действуй.
          </h2>
        </nav>
      </div>
      <div>
        <ul className="space-y-2">
          <li><p className="leading-7">Приёмная комиссия</p></li>
          <li>Довузовская подготовка</li>
          <li>Сотрудничество</li>
        </ul>
      </div>
      <div>
        <ul className="space-y-2">
          <li className="pb-3">Сотрудникам</li>
          <li className="pb-3">Довузовская подготовка</li>
          <li>Сотрудничество</li>
        </ul>
      </div>
    </div>

    {/* Третий блок */}
    <div className="flex flex-col sm:flex-row justify-center sm:justify-between items-center pt-10 pb-10 text-primary text-center text-sm gap-4">
      <p>© Некоммерческое акционерное общество «Кокшетауский университет имени Ш. Уалиханова», 2025</p>
    </div>
  </Container>
</footer>

        // </ViewTransitionWrap>

    );
};

export default Footer;