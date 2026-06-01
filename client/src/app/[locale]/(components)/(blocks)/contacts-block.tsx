"use client";

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
import { useEffect, useState } from "react";
import { ContactsType } from "@/shared/types/promise.type";
import { getContacts } from "@/shared/rest/get/get-contacts";
import { useLocale } from "next-intl";

const socials = [
  { icon: Facebook, label: "Facebook" },
  { icon: Instagram, label: "Instagram" },
  { icon: Linkedin, label: "LinkedIn" },
  { icon: Youtube, label: "YouTube" },
  { icon: Music2, label: "TikTok" },
];

export function ContactsBlock() {
  const locale = useLocale();
  const [contacts, setContacts] = useState<ContactsType | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    getContacts(locale)
      .then(setContacts)
      .finally(() => setLoading(false));
  }, [locale]);

  if (loading) return null; // или скелетон
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
            {contacts?.title}
          </div>
          <h1 className="mt-4 text-4xl font-semibold tracking-tight lg:text-5xl">
            {contacts?.subtitle}
          </h1>

          <div className="mt-12 grid gap-8 lg:grid-cols-3">
            <ContactCard icon={Phone} label="Номер телефона для связи">
              <a
                href={`tel:${contacts?.phone}`}
                className="block text-2xl font-medium tracking-tight"
              >
                {contacts?.phone}
              </a>
            </ContactCard>

            <ContactCard icon={MapPin} label="Адрес">
              <p className="text-base leading-relaxed">{contacts?.address}</p>
            </ContactCard>

            <ContactCard icon={Clock} label="График работы">
              <p className="text-base leading-relaxed">{contacts?.schedule}</p>
            </ContactCard>
          </div>

          <div className="mt-12 flex flex-wrap items-center justify-between gap-6 border-t border-primary-foreground/15 pt-8">
            <p className="text-sm text-primary-foreground/70">
              {contacts?.socialMedia}
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
