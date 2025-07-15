'use client';

import React from 'react';
import ProfessionList from './profession-list';

type Props = {
  locale: string;
};

const ProfessionListWrapper = ({ locale }: Props) => {
  return <ProfessionList locale={locale} />;
};

export default ProfessionListWrapper;