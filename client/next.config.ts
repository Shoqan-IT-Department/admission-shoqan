import { withNextVideo } from "next-video/process";
import type { NextConfig } from 'next'

const nextConfig: NextConfig = {

    /* config options here */
}

export default withNextVideo(nextConfig, { folder: 'videos' });

module.exports = {
    images: {
        remotePatterns: [
            {
                protocol: 'https',
                hostname: 'localhost',
                port: '1337',
                pathname: '/**',
            },
        ],
    },
}