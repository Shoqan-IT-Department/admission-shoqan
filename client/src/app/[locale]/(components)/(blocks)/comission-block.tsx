import {Clock, Instagram,MapPinHouse, MapPinCheckInside, Mail, MapPin, Phone, Hotel} from "lucide-react";
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

    const title = contents[0]?.title || '';
    const email = contents[0]?.email || '';
    const locales = contents[0]?.locales || '';
    const number = contents[0]?.number || '';
    const dayswork = contents[0]?.dayswork || '';
    const more = contents[0]?.more || '';
    const doc = contents[0]?.doc|| '';
    const med = contents[0]?.med || '';
    const identifycard = contents[0]?.identifycard || '';
    const photos = contents[0]?.photos || '';
    const card = contents[0]?.card || '';
    const certificate = contents[0]?.certificate || '';
    const grant = contents[0]?.grant || '';
    const envelope = contents[0]?.envelope || '';
    const sectitle = contents[0]?.sectitle || '';
    const instagram = contents[0]?.instagram || '';
    const instaurl = contents[0]?.instaurl || '';
    const toogis = contents[0]?.toogis || '';
    const toogisurl = contents[0]?.toogisurl || '';

    return (
        <div id="comission" className="grid grid-cols-1 md:grid-cols-2 gap-8 w-full rounded-4xl select-none mb-6 ">
            <div className="mt-10">
                <div className="bg-card hover:text-primary hover:bg-gradient-to-br hover:from-[#0E468B] hover:via-[#1370B9] hover:to-[#1370B9] transition-all p-6  shadow rounded-4xl select-none hover:shadow-2xl duration-200">
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
                    </div>
                </div>
            </div>

            {/* Правая колонка */}
            <div className="mt-10">
                <div className="bg-card p-6 focus:text-white hover:text-primary hover:bg-gradient-to-br hover:from-[#0E468B] hover:via-[#1370B9] hover:to-[#1370B9] transition-all  hover:shadow-2xl duration-200 rounded-4xl">
                    <h2 className="scroll-m-20 border-b pb-2 text-3xl font-semibold tracking-tight first:mt-0">
                        {t("commisionblock.title")}
                    </h2>
                    <div className="m-6 ">
                        <div className="flex items-center mb-4">
                            <Phone className="text-muted" />
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl"><Link href="tel:+77471001930">+77471001930</Link></p>
                        </div>
                        <div className="flex items-center mb-4">
                            <MapPinCheckInside className="text-muted" />
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl"><Link href={toogisurl}>{t("commisionblock.toogis")}</Link></p>
                        </div>
                        <div className="flex items-center mb-4">
                            <MapPinHouse className="text-muted " />
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl">{t("commisionblock.locale")}</p>
                        </div>
                        <div className="flex items-center mb-4">
                            <Mail className="text-muted" />
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl">{email}</p>
                        </div>
                        <div className="flex items-center">
                            <Clock className="text-muted" />
                            <p className="ml-2 scroll-m-20 font-semibold  text-xl">{t("commisionblock.schedule")}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    );
}