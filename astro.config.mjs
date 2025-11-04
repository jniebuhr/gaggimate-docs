import {defineConfig} from 'astro/config';
import mdx from '@astrojs/mdx';
import remarkToc from 'remark-toc';

// https://astro.build/config
import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
    integrations: [
        tailwind({
            nesting: true
        }),
        mdx()
    ],
    markdown: {
        remarkPlugins: [[remarkToc, {maxDepth: 3}]],
    },
    i18n: {
        locales: ["en", "it"],
        defaultLocale: "en",
        routing: {
            prefixDefaultLocale: false
        }
    }
});
