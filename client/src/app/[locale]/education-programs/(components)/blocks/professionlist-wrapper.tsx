"use client";

import ProfessionList from "./profession-list";
import {Suspense} from "react"
import PuffLoader from "react-spinners/PuffLoader";

const ProfessionListWrapper = () => {
  return  (<Suspense fallback={ <PuffLoader size={180}  className="p-10" color="#1470B9FF" />}><ProfessionList /></Suspense>);
};

export default ProfessionListWrapper;
