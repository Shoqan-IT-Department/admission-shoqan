import Link from 'next/link';
import { Button } from "@/shared/ui/button";
import { Home } from 'lucide-react';
import {SyncLoader} from "react-spinners";

export default function NotFound() {
  return (
    <div className="flex flex-col items-center justify-center min-h-[60vh] text-center p-4 text-popover">
        <span className="pt-6 pb-6"><SyncLoader color="#1470B9FF" /></span>
      <h1 className="text-6xl font-bold mb-4">404</h1>
      <h2 className="text-2xl font-semibold mb-4">Page Not Found</h2>
      <p className=" mb-8">
        The page you're looking for doesn't exist or has been moved.
      </p>
      <Button asChild className="text-popover">
        <Link href="/" className="flex items-center gap-2">
          <Home className="h-4 w-4" />
          Back to Home
        </Link>
      </Button>
    </div>
  );
}
