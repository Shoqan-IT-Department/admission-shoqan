'use client';

import React from 'react';
import ProfessionList from './profession-list';

type Props = {
  locale: string;
};

const ProfessionListWrapper = () => {
  return <ProfessionList />;
};

export default ProfessionListWrapper;