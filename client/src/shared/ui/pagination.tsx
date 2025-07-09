// components/ui/pagination/Pagination.tsx

'use client';
import React from 'react';
import { Button } from "@/shared/ui/button";
import { cn } from "@/lib/utils";

type Props = {
    totalPages: number;
    currentPage: number;
    onChange: (page: number) => void;
};

const getVisiblePageNumbers = (totalPages: number, currentPage: number) => {
    const pages: (number | string)[] = [];

    pages.push(1);
    if (currentPage > 4) pages.push("...");

    const start = Math.max(2, currentPage - 2);
    const end = Math.min(totalPages - 1, currentPage + 2);

    for (let i = start; i <= end; i++) pages.push(i);

    if (currentPage < totalPages - 3) pages.push("...");
    if (totalPages > 1) pages.push(totalPages);

    return pages;
};

const Pagination: React.FC<Props> = ({ totalPages, currentPage, onChange }) => {
    if (totalPages <= 1) return null;

    const handleChange = (page: number) => {
        if (page !== currentPage) onChange(page);
    };

    return (
        <div className="flex justify-center mt-6 gap-2 flex-wrap">
            <Button
                variant="outline"
                disabled={currentPage === 1}
                onClick={() => handleChange(currentPage - 1)}
            >
                Назад
            </Button>

            {getVisiblePageNumbers(totalPages, currentPage).map((page, i) =>
                typeof page === "number" ? (
                    <Button
                        key={i}
                        className={cn(
                            currentPage === page ? 'text-muted-foreground' : 'text-foreground'
                        )}
                        variant={currentPage === page ? 'default' : 'outline'}
                        onClick={() => handleChange(page)}
                    >
                        {page}
                    </Button>
                ) : (
                    <span key={i} className="px-2 py-1 text-popover select-none">…</span>
                )
            )}

            <Button
                variant="outline"
                disabled={currentPage === totalPages}
                onClick={() => handleChange(currentPage + 1)}
            >
                Вперёд
            </Button>
        </div>
    );
};

export default Pagination;
