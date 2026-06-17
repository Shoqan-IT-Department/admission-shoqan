"use client";

import { useEffect, useState } from "react";
import { Button } from "@/shared/ui/button";
import { Home } from "lucide-react";
import Link from "next/link";
import Container from "@/shared/ui/wrappers/container";
import { PATHS } from "@/config/paths";
import { getErrors } from "@/shared/rest/get/get-errors";
import { ErrorsType } from "@/shared/types/promise.type";
import { useLocale } from "next-intl";
import axios from "axios";
import PuffLoader from "react-spinners/PuffLoader";

export default function Error({
  error,
  reset,
}: {
  error: Error & { digest?: string; status?: number };
  reset: () => void;
}) {
  const locale = useLocale();
  const [data, setData] = useState<ErrorsType | null>(null);
  const [status, setStatus] = useState<number | null>(null);

  useEffect(() => {
    getErrors(locale).then(setData);
  }, [locale]);

  useEffect(() => {
    if (axios.isAxiosError(error)) {
      setStatus(error.response?.status ?? null);
    } else if (error.status) {
      setStatus(error.status);
    }
  }, [error]);

  return (
    <Container>
      <div className="flex flex-col items-center justify-center min-h-[60vh] text-center p-4">
        <PuffLoader size={180}  className="p-10" color="#1470B9FF" />
        {status && (
          <p className="text-6xl font-bold mb-4 text-popover">{status}</p>
        )}
        <h2 className="text-2xl font-semibold my-4">{data?.title}</h2>
        <p className="text-popover mb-8">{data?.subtitle}</p>
        <div className="flex gap-4">
          <Button onClick={() => reset()}>{data?.again}</Button>
          <Button asChild variant="outline">
            <Link href={PATHS.HOME} className="flex items-center gap-2">
              <Home className="h-4 w-4" />
              {data?.home}
            </Link>
          </Button>
        </div>
      </div>
    </Container>
  );
}
