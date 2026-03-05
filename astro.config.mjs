import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import remarkToc from 'remark-toc';

// https://astro.build/config
import tailwind from "@astrojs/tailwind";

import react from '@astrojs/react';

// https://astro.build/config
export default defineConfig({
  integrations: [tailwind({
    nesting: true
  }), mdx(), react()],
  markdown: {
    remarkPlugins: [[remarkToc, {maxDepth: 2}]],
  }
});