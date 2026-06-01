import { useState } from "react";

export function usePagination(totalCount: number, itemsPerPage: number) {
  const [currentPage, setCurrentPage] = useState(1);

  const totalPages = Math.ceil(totalCount / itemsPerPage);

  const reset = () => setCurrentPage(1);

  return { currentPage, totalPages, setCurrentPage, reset };
}
