import type { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
  {
    userAgent: '*',
    allow: '/',
    disallow: [
          '/private/',
        ],
  },
],

    sitemap: "https://admission.shokan.edu.kz/ru/sitemap.xml",
    host: 'https://admission.shokan.edu.kz',
  }
}