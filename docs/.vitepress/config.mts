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
