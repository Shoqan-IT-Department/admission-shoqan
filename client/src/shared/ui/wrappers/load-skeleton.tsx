import { Card, CardContent, CardHeader } from "../card";
import { Skeleton } from "../skeleton";

export function SkeletonLoad() {
  return (
    <div>
      <Skeleton className="aspect-video rounded-2xl h-100 w-full" />
    </div>
  );
}
