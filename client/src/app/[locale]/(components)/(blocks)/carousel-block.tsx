"use client";

import { Card, CardContent } from "@/shared/ui/card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  type CarouselApi,
} from "@/shared/ui/carousel";
import { useEffect, useState } from "react";

const CarouselBlock = () => {
  const [api, setApi] = useState<CarouselApi>();

  useEffect(() => {
    if (!api) return;

    const interval = setInterval(() => {
      api.scrollNext();
    }, 2000);

    return () => clearInterval(interval);
  }, [api]);

  return (
    <div className="relative w-full my-8">
      <div className="my-15">
        <Carousel
          setApi={setApi}
          opts={{ align: "start", loop: true }}
          className="w-full"
        >
          <CarouselContent className="-ml-4">
            {Array.from({ length: 5 }).map((_, index) => (
              <CarouselItem key={index} className="basis-full sm:basis-1/3">
                <div>
                  <Card>
                    <CardContent className="flex aspect-video items-center justify-center p-6">
                      <span className="text-4xl sm:text-5xl font-semibold">
                        {index + 1}
                      </span>
                    </CardContent>
                  </Card>
                </div>
              </CarouselItem>
            ))}
          </CarouselContent>
        </Carousel>
      </div>
    </div>
  );
};

export default CarouselBlock;
