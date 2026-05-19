import { Card, CardContent } from "@/shared/ui/card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/shared/ui/carousel";
import Container from "@/shared/ui/wrappers/container";
import * as React from "react";

const CarouselBlock = () => {
  return (
    <div className="relative w-full my-8">
      <Container>
        <Carousel opts={{ align: "start", loop: true }} className="w-full">
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
          {/* <CarouselPrevious className="left-0" />
        <CarouselNext className="right-0" /> */}
        </Carousel>
      </Container>
    </div>
  );
};

export default CarouselBlock;
