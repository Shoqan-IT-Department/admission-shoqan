import React from 'react';
import { useTranslations} from 'next-intl';


export default function Decoration() {

    const t =  useTranslations("Decoration");

    return (
        <div className=" flex items-center">
            <p className="text-white text-3xl font-medium">
               {t("learn")}{' '}
                <span className="inline-block text-chart-4 transition-transform duration-300 ease-in-out hover:scale-110 hover:rotate-1 hover:underline">
          {t("explore")}
        </span>{' '}
                {t("act")}
            </p>
        </div>
    )
}