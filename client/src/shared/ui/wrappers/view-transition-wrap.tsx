import React, { unstable_ViewTransition as ViewTransition } from 'react';

export default function ViewTransitionWrap({name, children,}:{
    name: string;
    children: React.ReactNode;
}) {
    return <ViewTransition name={name}>{children}</ViewTransition>;
}
