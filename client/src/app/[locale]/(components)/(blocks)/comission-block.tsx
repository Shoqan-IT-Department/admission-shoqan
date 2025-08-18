import {Clock, Instagram, Map, MapPinCheckInside, Mail, MapPin, Phone, Hotel} from "lucide-react";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import Link from "next/link";
import { getTranslations } from "next-intl/server";

type CommisionContactsType = {
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

async function getCommission(): Promise<CommisionContactsType[]> {
    try {
        const res = await ADM_URL.get<{ data: CommisionContactsType[] }>(ENDPOINTS.GET.CONTACTS_COMISSION);
        return res.data.data;
    } catch (err) {
        console.error('Ошибка при получении статьи:', err);
        return [];
    }
}

export default async function CommisionBlock() {

    const t = await getTranslations('HomePage');

    const contents = await getCommission();

    const toogisurl = contents[0]?.toogisurl || '';

    return (
        <div id="comission" className="grid grid-cols-1 md:grid-cols-2 gap-8 w-full rounded-4xl select-none mb-6 ">
            <div className="mt-10">
                <div className="bg-card p-6  shadow rounded-4xl select-none ">
                    <h2 className="scroll-m-20 border-b pb-2 text-3xl font-semibold tracking-tight first:mt-0">
                        {t("commisionblock.sectitle")}
                    </h2>
                    <div className="m-6">
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.doc")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.med")}</p></div>
                        <div className="mb-2"> <p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.identifycard")}</p></div>
                        <div className="mb-2"> <p className="scroll-m-20 font-semibold  pb-2 text-xl">{t("commisionblock.photos")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.card")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold  pb-2 text-xl">{t("commisionblock.certificate")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold  pb-2 text-xl">{t("commisionblock.grant")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.envelope")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.folder")}</p></div>
                        <div className="mb-2"><p className="scroll-m-20 font-semibold pb-2 text-xl">{t("commisionblock.exam")}</p></div>
                    </div>
                </div>
            </div>
            <div className="mt-10">
                <div className="bg-card p-6 focus:text-white rounded-4xl shadow">
                    <h2 className="scroll-m-20 border-b pb-2 text-3xl font-semibold tracking-tight first:mt-0">
                        {t("commisionblock.title")}
                    </h2>
                    <div className="m-6 ">
                        <div className="flex items-center mb-4">
                            <div><Phone className="text-muted" /></div>
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl"><Link href="tel:+77084443051">+77084443051</Link>, <Link href="tel:+77162721112">+77162721112</Link></p>
                        </div>
                        <div className="flex items-center mb-4">
                            <div><MapPinCheckInside className="text-muted" /></div>
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl"><Link href="https://go.2gis.com/MWQci">{t("commisionblock.toogis")}</Link></p>
                        </div>
                        <div className="flex items-center mb-4 ">
                            <div><Map className="text-muted " /></div>
                            <p className="ml-2 scroll-m-20 font-semibold xl:text-xl lg:text-md md:text-sm ">{t("commisionblock.locale")}</p>
                        </div>
                         <div className="flex items-center mb-4">
                            <div><Instagram className="text-muted"/></div>
                           <Link href="https://www.instagram.com/ualikhanov.university/?igsh=Y2JtOWQzdzdoN2Q0&utm_source=qr#">
                           <p className="ml-2 scroll-m-20 font-semibold  text-xl">{t("commisionblock.insta")}</p>
                           </Link>
                        </div>
                        <div className="flex items-center mb-4">
                            <div><Mail className="text-muted" /></div>
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl">university@shokan.edu.kz</p>
                        </div>
                        <div className="flex items-center">
                            <div><Clock className="text-muted" /></div>
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl">{t("commisionblock.schedule")}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}