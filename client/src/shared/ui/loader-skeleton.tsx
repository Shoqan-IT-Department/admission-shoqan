import { Skeleton } from "@/shared/ui/skeleton";


export default function LoaderSkeleton() {
  return (
    <div className="p-6 space-y-4">
      <Skeleton className="h-8 w-1/3" />
      <Skeleton className="h-4 w-full" />
      <Skeleton className="h-4 w-full" />
      <Skeleton className="h-4 w-2/3" />
      <Skeleton className="h-56 w-full rounded-xl" />
    </div>
  );
}