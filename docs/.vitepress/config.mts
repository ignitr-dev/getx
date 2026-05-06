import { defineConfig } from "vitepress";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Ignitr",
  description: "Flutter Ignitr a mini flutter MVC framework",
  cleanUrls: true,
  srcDir: "./src",
  markdown: {
    lineNumbers: true,
    defaultHighlightLang: "dart",
  },
  head: [
    [
      "link",
      {
        rel: "icon",
        type: "image/x-icon",
        href: "/images/favicon.png",
      },
    ],
    // TODO: Update it configure google analytics
    // [
    //   "script",
    //   {
    //     async: "true",
    //     src: "https://www.googletagmanager.com/gtag/js?id=G-GKNMVN5QK0",
    //   },
    // ],
    // [
    //   "script",
    //   {},
    //   "window.dataLayer = window.dataLayer || [];\nfunction gtag(){dataLayer.push(arguments);}\ngtag('js', new Date());\ngtag('config', 'G-GKNMVN5QK0');",
    // ],
  ],
  themeConfig: {
    logo: "/images/logo.png",
    search: {
      provider: "local",
    },
    outline: [2, 4],
    socialLinks: [
      { icon: "github", link: "https://github.com/ignitr-dev/getx" },
      { icon: "instagram", link: "https://www.instagram.com/iamspydey" },
    ],
    footer: {
      message: "Released under the MIT License.",
      copyright: `Copyright © 2021 - ${new Date().getFullYear()} All rights reserved by devsbuddy.com`,
    },

    // https://vitepress.dev/reference/default-theme-config
    nav: [
      {
        text: "Home",
        link: "/",
      },
      {
        text: "Docs",
        link: "/introduction",
      },
    ],

    sidebar: [
      {
        text: "Examples",
        items: [{ text: "Introduction", link: "/introduction" }],
      },
    ],
  },
});
