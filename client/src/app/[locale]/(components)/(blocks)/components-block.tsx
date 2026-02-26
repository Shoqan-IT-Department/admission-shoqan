import VideoComponent from "@/shared/ui/video";
import ChoiceCard from "@/app/[locale]/(components)/(cards)/choice-card";

export default async function ComponentsBlock({ locale }: { locale: string }) {
  return (
    <div className="pt-6">
      <div className="mt-4 rounded-md">
        <VideoComponent />
      </div>
      <ChoiceCard locale={locale} />
    </div>
  );
}
