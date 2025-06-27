'use client'

import Container from "@/shared/ui/wrappers/container";
import {ChevronRight, House} from "lucide-react";
import {usePathname} from "next/navigation";
import Link from "next/link";
import {PATHS} from "@/config/paths";
import React from "react";


const RoadBlock = () => {

    const location = usePathname()
    const pathNameMap = Object.entries(PATHS).reduce((acc, [key, value]) => {
        acc[value] = key;
        return acc;
    }, {} as Record<string, string>);

    const roadName = pathNameMap[location] || '';

    return (



        <Container>
            <div className="flex items-center gap-4 pt-10 pb-6 text-secondary" >
                <Link href={PATHS.HOME}>
                    <House className=""/>
                </Link>
                <ChevronRight className=""/>
                <h4 className="scroll-m-20 text-2xs font-semibold tracking-tight">
                    {roadName}
                </h4>
            </div>
        </Container>
    );
};

export default RoadBlock;