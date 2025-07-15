import type { MetadataRoute } from 'next'

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
  {
    userAgent: '*',
    allow: '/',
    disallow: [
          '/private/',
          '/api/',
          '/admin/',
          '/drafts/',
          '/dev-only/',
        ],
  },
],

    sitemap: "https://admission.shokan.edu.kz/ru/sitemap.xml",
    host: 'https://admission.shokan.edu.kz',
  }
}