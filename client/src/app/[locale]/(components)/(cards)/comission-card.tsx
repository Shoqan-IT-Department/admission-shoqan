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

async function getCommission(): Promise<CommisionContactsType[]> {
  try {
    const res = await ADM_URL.get<{ data: CommisionContactsType[] }>(ENDPOINTS.GET.CONTACTS_COMISSION);
    return res.data.data;
  } catch (err) {
    console.error('Ошибка при получении статьи:', err);
    return [];
  }
}


export const revalidate = 600;

export default async function ComissionCard() {

    const contents = await getCommission();

    const title = contents[0]?.title || '';
    const email = contents[0]?.email || '';
    const locales = contents[0]?.locales || '';
    const number = contents[0]?.number || '';
    const dayswork = contents[0]?.dayswork || '';
    const more = contents[0]?.more || '';


    return (
        <div className="select-none cursor-default font-semibold text-2xs rounded-4xl">
  <div className="p-6 bg-white rounded-4xl shadow-md mt-10">
    <h2 className="text-2xl sm:text-3xl font-semibold mb-6">{title}</h2>

    <div className="grid grid-cols-1 md:grid-cols-2 gap-4 sm:gap-6 text-gray-800 border-b pb-6">
      <div className="flex items-center gap-3">
        <Phone className="text-muted mt-1" />
        <PhoneLink number="+77471001930" />
      </div>

      <div className="flex items-center gap-3">
        <MapPin className="text-muted mt-1" />
        <span>{locales}</span>
      </div>

      <div className="flex items-center gap-3">
        <Mail className="text-muted mt-1" />
        <span>{email}</span>
      </div>

      <div className="flex items-center gap-3">
        <Clock className="text-muted mt-1" />
        <div>{dayswork}</div>
      </div>
    </div>

     <div className="mt-6 items-center flex">
                        <span className=" border m-2 flex items-center rounded-lg p-2">
                             {more}<Button className="bg-popover hover:bg-muted ml-4"><ArrowRight /></Button>
                        </span>
                    </div>
  </div>
</div>
            // <div className="select-none cursor-default items-center font-semibold text-2xs rounded-4xl">
            //     <div className=" p-6 bg-white rounded-4xl shadow-md mt-10">
            //         <h2 className="text-2xl font-semibold mb-6">{title}</h2>

            //         <div className="grid md:grid-cols-2 gap-6 text-gray-800 border-b pb-6">
            //             <div className="flex items-center gap-3">
            //                 <Phone className="text-muted mt-1" />
            //                 <PhoneLink number="+77471001930" />
            //             </div>

            //             <div className="flex items-center gap-3">
            //                 <MapPin className="text-muted mt-1" />
            //                 <span>
            //                     {locales}
            //                 </span>
            //             </div>

            //             <div className="flex items-center gap-3">
            //                 <Mail className="text-muted mt-1" />
            //                 <span>{email}</span>
            //             </div>

            //             <div className="flex items-center gap-3 ">
            //                 <Clock className="text-muted mt-1" />
            //                 <div>
            //                     <div>{dayswork}</div>
            //                 </div>
            //             </div>
            //         </div>

            //         <div className="mt-6 items-center flex">
            //             <span className=" border m-2 flex items-center rounded-lg p-2">
            //                  {more}<Button className="bg-popover hover:bg-muted ml-4"><ArrowRight /></Button>
            //             </span>
            //         </div>
            //     </div>
            // </div>
    );
};
