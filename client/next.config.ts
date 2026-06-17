import type { NextConfig } from "next";
import createNextIntlPlugin from "next-intl/plugin";

const nextConfig: NextConfig = {
  outputFileTracingRoot: __dirname,
  output: "standalone",
  async rewrites() {
  return [
    {
      source: "/:locale/api/:path*",
      destination: "https://shokan.edu.kz/api/:path*",
    },
    {
      source: "/api/:path*",
      destination: "https://shokan.edu.kz/api/:path*",
    },
  ];
  },
  webpack(config) {
    const fileLoaderRule = config.module?.rules?.find((rule: any) =>
      rule.test?.test?.(".svg"),
    );
    if (!fileLoaderRule) return config;
    config.module.rules.push(
      {
        ...fileLoaderRule,
        test: /\.svg$/i,
        resourceQuery: /url/,
      },
      {
        test: /\.svg$/i,
        issuer: fileLoaderRule.issuer,
        resourceQuery: {
          not: [...(fileLoaderRule.resourceQuery?.not || []), /url/],
        },
        use: ["@svgr/webpack"],
      },
    );
    fileLoaderRule.exclude = /\.svg$/i;
    return config;
  },
};

const withNextIntl = createNextIntlPlugin();
export default withNextIntl(nextConfig);