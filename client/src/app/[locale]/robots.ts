import { ADM_URL } from '@/config/instance'
import type { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: {
      userAgent: '*',
      allow: '/',
      disallow: '/private/',
    },
    sitemap: "https://admission-api.shokan.edu.kz/sitemap.xml",
  }
}