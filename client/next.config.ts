import { withNextVideo } from "next-video/process";
import type { NextConfig } from 'next'
import createNextIntlPlugin from 'next-intl/plugin';


const nextConfig: NextConfig = {
    webpack(config) {
        // Grab the existing rule that handles SVG imports
        const fileLoaderRule = config.module?.rules?.find((rule: { test?: { test?: (pattern: string) => boolean } }) =>
            rule.test?.test?.('.svg'),
        );

        config.module.rules.push(
            // Reapply the existing rule, but only for svg imports ending in ?url
            {
                ...fileLoaderRule,
                test: /\.svg$/i,
                resourceQuery: /url/, // *.svg?url
            },
            // Convert all other *.svg imports to React components
            {
                test: /\.svg$/i,
                issuer: fileLoaderRule.issuer,
                resourceQuery: { not: [...fileLoaderRule.resourceQuery.not, /url/] }, // exclude if *.svg?url
                use: ['@svgr/webpack'],
            },
        )

        // Modify the file loader rule to ignore *.svg, since we have it handled now.
        fileLoaderRule.exclude = /\.svg$/i

        return config
    },
}





const withNextIntl = createNextIntlPlugin();

export default withNextIntl(
    withNextVideo(nextConfig, { folder: 'videos' })
);

