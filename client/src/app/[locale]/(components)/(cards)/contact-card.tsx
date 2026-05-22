import type { ComponentType, ReactNode } from "react";

export function ContactCard({
  icon: Icon,
  label,
  children,
}: {
  icon: ComponentType<{ className?: string }>;
  label: string;
  children: ReactNode;
}) {
  return (
    <div className="rounded-2xl border border-primary-foreground/15 bg-primary-foreground/5 p-6 backdrop-blur-sm transition hover:border-primary-foreground/30 hover:bg-primary-foreground/10">
      <div className="flex items-center gap-3">
        <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-primary-foreground/10">
          <Icon className="h-5 w-5" />
        </div>
        <p className="text-xs uppercase tracking-wider text-primary-foreground/60">
          {label}
        </p>
      </div>
      <div className="mt-5 text-primary-foreground">{children}</div>
    </div>
  );
}
