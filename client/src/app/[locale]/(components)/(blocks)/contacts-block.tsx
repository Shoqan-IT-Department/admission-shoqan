import {
  Phone,
  MapPin,
  Clock,
  Facebook,
  Instagram,
  Linkedin,
  Youtube,
  Music2,
} from "lucide-react";
import { ContactCard } from "../(cards)/contact-card";
import Container from "@/shared/ui/wrappers/container";

const socials = [
  { icon: Facebook, label: "Facebook" },
  { icon: Instagram, label: "Instagram" },
  { icon: Linkedin, label: "LinkedIn" },
  { icon: Youtube, label: "YouTube" },
  { icon: Music2, label: "TikTok" },
];

export function ContactsBlock() {
  return (
    <Container>
      <section className="relative overflow-hidden rounded-3xl bg-primary p-8 text-primary-foreground lg:p-14 my-4">
        <div
          className="absolute -right-24 -top-24 h-72 w-72 rounded-full bg-white/10 blur-3xl"
          aria-hidden
        />
        <div
          className="absolute -bottom-32 -left-20 h-80 w-80 rounded-full bg-white/5 blur-3xl"
          aria-hidden
        />

        <div className="relative">
          <div className="flex items-center gap-3 text-xs uppercase tracking-[0.25em] text-primary-foreground/70">
            <span className="h-px w-10 bg-primary-foreground/40" />
            Свяжитесь с нами
          </div>
          <h1 className="mt-4 text-4xl font-semibold tracking-tight lg:text-5xl">
            Контакты приёмной комиссии
          </h1>

          <div className="mt-12 grid gap-8 lg:grid-cols-3">
            <ContactCard icon={Phone} label="Номер телефона для связи">
              <a
                href="tel:+77783967678"
                className="block text-2xl font-medium tracking-tight"
              >
                8-778-396-76-78
              </a>
              <p className="mt-2 text-sm text-primary-foreground/70">
                Пн–Пт · 09:00–18:00
              </p>
            </ContactCard>

            <ContactCard icon={MapPin} label="Адрес">
              <p className="text-base leading-relaxed">
                Казахстан, 020000, г. Кокшетау,
                <br />
                ул. Абая, 76, главный корпус,
                <br />
                ауд. 126а
              </p>
            </ContactCard>

            <ContactCard icon={Clock} label="График работы">
              <p className="text-base leading-relaxed">
                Казахстан, 020000, г. Кокшетау,
                <br />
                ул. Абая, 76, главный корпус,
                <br />
                ауд. 116а
              </p>
            </ContactCard>
          </div>

          <div className="mt-12 flex flex-wrap items-center justify-between gap-6 border-t border-primary-foreground/15 pt-8">
            <p className="text-sm text-primary-foreground/70">
              Мы в социальных сетях — пишите, следите за новостями приёма
            </p>
            <div className="flex flex-wrap gap-3">
              {socials.map(({ icon: Icon, label }) => (
                <a
                  key={label}
                  href="#"
                  aria-label={label}
                  className="group flex h-11 w-11 items-center justify-center rounded-full border border-primary-foreground/25 bg-primary-foreground/5 transition hover:-translate-y-0.5 hover:bg-primary-foreground hover:text-primary"
                >
                  <Icon className="h-4 w-4" />
                </a>
              ))}
            </div>
          </div>
        </div>
      </section>
    </Container>
  );
}
