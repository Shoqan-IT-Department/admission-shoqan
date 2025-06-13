'use client'

import React, {useEffect, useState} from 'react';
import {ArrowRight, Clock, Mail, MapPin, Phone} from "lucide-react";
import Container from "@/shared/ui/wrappers/container";
import {Button} from "@/shared/ui/button";
import {ADM_URL} from "@/config/instance";
import {ENDPOINTS} from "@/config/endpoints";
import PhoneLink from "@/shared/ui/phone-link";

type CommisionContactsType = {
    title: string;
    email: string;
    locales: string;
    number: number;
    dayswork: string;
    more: string;
}


const ComissionCard = () => {

    const [contents, setContents] = useState<CommisionContactsType[]>([]);

    useEffect(() => {
        ADM_URL
            .get<{ data: CommisionContactsType[] }>(ENDPOINTS.GET.CONTACTS_COMISSION)
            .then((res) =>setContents(res.data.data))
            .catch((err) => console.error('Ошибка при получении статей:', err));

    }, []);

    const title = contents[0]?.title || '';
    const email = contents[0]?.email || '';
    const locales = contents[0]?.locales || '';
    const number = contents[0]?.number || '';
    const dayswork = contents[0]?.dayswork || '';
    const more = contents[0]?.more || '';


    return (
        <Container>
            <div className="select-none cursor-default leading-none font-semibold text-2xs">
                <div className=" p-6 bg-white rounded-4xl shadow-md mt-10">
                    <h2 className="text-2xl font-semibold mb-6">{title}</h2>

                    <div className="grid md:grid-cols-2 gap-6 text-gray-800 border-b pb-6">
                        <div className="flex items-start gap-3">
                            <Phone className="text-muted mt-1" />
                            <PhoneLink number="+77471001930" />
                        </div>

                        <div className="flex items-start gap-3">
                            <MapPin className="text-muted mt-1" />
                            <span>
                                {locales}
                            </span>
                        </div>

                        <div className="flex items-start gap-3">
                            <Mail className="text-muted mt-1" />
                            <span>{email}</span>
                        </div>

                        <div className="flex items-start gap-3 ">
                            <Clock className="text-muted mt-1" />
                            <div>
                                <div>{dayswork}</div>
                            </div>
                        </div>
                    </div>

                    <div className="mt-6 items-center flex">
                        <span className=" flex items-center rounded-lg p-2">
                             {more}<Button className="bg-popover hover:bg-muted ml-4"><ArrowRight /></Button>
                        </span>
                    </div>
                </div>
            </div>
        </Container>
    );
};

export default ComissionCard;