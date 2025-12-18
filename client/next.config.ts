import { withNextVideo } from "next-video/process";
import type { NextConfig } from "next";
import createNextIntlPlugin from "next-intl/plugin";

const nextConfig: NextConfig = {
  outputFileTracingRoot: __dirname, // исправляем предупреждение lockfile

  webpack(config) {
    const fileLoaderRule = config.module?.rules?.find((rule: any) =>
      rule.test?.test?.(".svg")
    );

    if (!fileLoaderRule) return config;

    config.module.rules.push(
      {
        ...fileLoaderRule,
        test: /\.svg$/i,
        resourceQuery: /url/, // *.svg?url
      },
      {
        test: /\.svg$/i,
        issuer: fileLoaderRule.issuer,
        resourceQuery: {
          not: [...(fileLoaderRule.resourceQuery?.not || []), /url/],
        },
        use: ["@svgr/webpack"],
      }
    );

    fileLoaderRule.exclude = /\.svg$/i;

    return config;
  },
};

const withNextIntl = createNextIntlPlugin();

export default withNextIntl(withNextVideo(nextConfig, { folder: "videos" }));
