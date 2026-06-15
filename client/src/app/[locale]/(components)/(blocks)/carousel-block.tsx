"use client";

import { getImage } from "@/shared/rest/get/get-image";
import { ImagesType } from "@/shared/types/promise.type";
import { Card, CardContent } from "@/shared/ui/card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  type CarouselApi,
} from "@/shared/ui/carousel";
import { useEffect, useState } from "react";

const CarouselBlock = () => {
  const [image, setImage] = useState<ImagesType[]>([]);
  useEffect(() => {
    getImage().then((data) => setImage(data.map((item) => item.image)));
  }, []);
  const [api, setApi] = useState<CarouselApi>();

  useEffect(() => {
    if (!api) return;

    const interval = setInterval(() => {
      api.scrollNext();
    }, 3000);

    return () => clearInterval(interval);
  }, [api]);

  return (
    <div className="relative w-full my-8">
      <div className="my-15">
        <Carousel
          setApi={setApi}
          opts={{ align: "start", loop: true, duration: 100 }}
          className="w-full"
        >
          <CarouselContent className="-ml-4">
            {image.map((img) => (
              <CarouselItem key={img.id} className="basis-full sm:basis-1/3">
                <div>
                  <Card>
                    <CardContent className="flex aspect-video items-center justify-center p-2">
                      <img
                        src={`https://admission-api.shokan.edu.kz${img.formats.medium?.url ?? img.url}`}
                        alt={img.alternativeText ?? img.name}
                        className="w-full h-full object-cover rounded-md"
                      />
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
