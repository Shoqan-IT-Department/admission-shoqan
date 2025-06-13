import React from 'react';
import Container from "@/shared/ui/wrappers/container";
import Logo from "@/widgets/logotype/logo-blue.svg"
import {NAVIGATION_FOOTER} from "@/shared/constants/navigation-footer";
import ViewTransitionWrap from "@/shared/ui/wrappers/view-transition-wrap";






const Footer = () => {
    return (
        // <ViewTransitionWrap name="footer">
            <footer className="bg-popover bottom-0 w-full">
                <Container>
                    <div className="flex justify-between items-center mt-10 text-primary pb-10 pt-10 border-b border-secondary">
                        <div>
                            {/*<Logo/>*/}
                        </div>
                        <div>
                            <ul className="space-y-2">
                                <li className="pb-3">Поступающим</li>
                                <li className="pb-3">Университет</li>
                                <li>Наука и инновации</li>
                            </ul>
                        </div>
                        <div>
                            <ul className="space-y-2">
                                <li className="pb-3">Обучающимся</li>
                                <li className="pb-3">Факультеты и кафедры</li>
                                <li>Услуги</li>
                            </ul>
                        </div>
                        <div>
                            <ul className="space-y-2">
                                <li className="pb-3">Сотрудникам</li>
                                <li className="pb-3">
                                    Довузовская подготовка
                                </li>
                                <li>Сотрудничество</li>
                            </ul>
                        </div>
                    </div>

                    <div className="flex justify-between items-center pt-10 text-primary pb-10 pt-10 border-b border-secondary">
                        <div>
                            <nav><h2 className="scroll-m-20 text-3xl font-semibold tracking-tight ">Учись. <span className="text-chart-4">Исследуй.</span> Действий.</h2></nav>
                        </div>
                        <div>
                            <ul className="space-y-2">
                                <li><p className="leading-7">Приёмная комиссия</p></li>
                                <li>
                                    Довузовская подготовка
                                </li>
                                <li>Сотрудничество</li>
                            </ul>
                        </div>
                        <div>
                            <ul className="space-y-2">
                                <li className="pb-3">Сотрудникам</li>
                                <li className="pb-3">
                                    Довузовская подготовка
                                </li>
                                <li>Сотрудничество</li>
                            </ul>
                        </div>
                    </div>
                    <div className="flex justify-center items-center pt-10 pb-10 text-primary">
                        <div>
                            <p>© Некоммерческое акционерное общество «Кокшетауский университет имени Ш. Уалиханова», 2025</p>
                        </div>
                    </div>

                </Container>
            </footer>
        // </ViewTransitionWrap>

    );
};

export default Footer;