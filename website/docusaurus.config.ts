import type { Options as ClientRedirectsPluginOptions } from '@docusaurus/plugin-client-redirects';
import type { Options as BlogPluginOptions } from '@docusaurus/plugin-content-blog';
import type * as Preset from '@docusaurus/preset-classic';
import type { Config } from '@docusaurus/types';
import { themes as prismThemes } from 'prism-react-renderer';
import redirects from './redirects.json';

const githubRepoUrl = 'https://github.com/halildurmus/win32';

const config: Config = {
  title: 'win32',
  tagline: 'Tap into Windows Power with Dart',
  url: 'https://win32.pub',
  baseUrl: '/',
  favicon: 'img/favicon.svg',
  organizationName: 'halildurmus',
  projectName: 'win32',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  plugins: [
    [
      '@docusaurus/plugin-client-redirects',
      {
        redirects: redirects,
        createRedirects(existingPath) {
          // if (existingPath.includes('/community')) {
          //   // Redirect from /docs/team/X to /community/X and
          //   // /docs/support/X to /community/X
          //   return [
          //     existingPath.replace('/community', '/docs/team'),
          //     existingPath.replace('/community', '/docs/support'),
          //   ];
          // }
          return undefined; // Return a falsy value: no redirect created
        },
      } satisfies ClientRedirectsPluginOptions,
    ],
    './plugins/tailwindcss.ts',
    [
      './plugins/blog.js',
      {
        routeBasePath: '/blog',
        blogTitle: 'Blog',
        blogDescription:
          'A resource for win32, Flutter and Dart ecosystem, and Windows development.',
        blogSidebarCount: 0,
        blogSidebarTitle: 'All posts',
        feedOptions: {
          type: 'all',
          title: 'Blog',
          description:
            'A resource for win32, Flutter and Dart ecosystem, and Windows development.',
          copyright: `Copyright © ${new Date().getFullYear()} • Halil Durmus`,
        },
        postsPerPage: 12,
        admonitions: {
          keywords: ['simple', 'note', 'tip', 'info', 'warning', 'danger'],
        },
      } satisfies BlogPluginOptions,
    ],
    // TODO(halildurmus): Enable changelog plugin.
    // [
    //   './plugins/changelog.js',
    //   {
    //     routeBasePath: '/changelog',
    //     authorsMapPath: 'authors.json',
    //     blogTitle: 'win32 Changelog',
    //     blogDescription:
    //       'Keep yourself up-to-date about new features in every release',
    //     blogSidebarCount: 'ALL',
    //     blogSidebarTitle: 'Changelog',
    //     feedOptions: {
    //       type: 'all',
    //       title: 'win32 Changelog',
    //       description:
    //         'Keep yourself up-to-date about new features in every release',
    //       copyright: `Copyright © ${new Date().getFullYear()} • Halil Durmus`,
    //     },
    //     postsPerPage: 20,
    //     showReadingTime: false,
    //   },
    // ],
    './plugins/clarity.ts',
  ],

  presets: [
    [
      'classic',
      {
        blog: false,
        docs: {
          path: './docs',
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl: `${githubRepoUrl}/tree/main/website`,
          showLastUpdateAuthor: true,
          showLastUpdateTime: true,
          admonitions: {
            keywords: ['simple', 'note', 'tip', 'info', 'warning', 'danger'],
          },
          exclude: ['**/**/_*.md'],
          // TODO(halildurmus): Enable feedback plugin.
          // remarkPlugins: [feedbackPlugin],
        },
        gtag: {
          trackingID: 'G-SPFSB6RTZW',
        },
        pages: {
          editLocalizedFiles: true,
          editUrl: `${githubRepoUrl}/tree/main/website/src/pages`,
          showLastUpdateAuthor: true,
          showLastUpdateTime: true,
        },
        sitemap: {
          ignorePatterns: ['**/_*.md'],
        },
        theme: {
          customCss: [
            require.resolve('./src/win32-theme/css/colors.css'),
            require.resolve('./src/win32-theme/css/fonts.css'),
            require.resolve('./src/win32-theme/css/custom.css'),
            require.resolve('./src/css/custom.css'),
            require.resolve('./src/css/split-pane.css'),
            require.resolve('./src/css/demo-page.css'),
          ],
        },
      } satisfies Preset.Options,
    ],
  ],

  scripts: [],

  themeConfig: {
    algolia: {
      appId: 'HX017D1R57',
      apiKey: '8d7bf2c1447cea6d0acbdcc9615e1b08',
      indexName: 'win32',
      contextualSearch: true,
    },
    colorMode: {
      respectPrefersColorScheme: true,
    },
    docs: {
      sidebar: {
        autoCollapseCategories: true,
      },
    },
    image: 'img/social.png',
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.vsDark,
      additionalLanguages: ['bash', 'dart', 'diff', 'json'],
      magicComments: [
        // Remember to extend the default highlight class name as well!
        {
          className: 'theme-code-block-highlighted-line',
          line: 'highlight-next-line',
          block: { start: 'highlight-start', end: 'highlight-end' },
        },
        {
          className: 'code-block-hidden',
          line: 'hide-next-line',
          block: { start: 'hide-start', end: 'hide-end' },
        },
        {
          className: 'theme-code-block-added-line',
          line: 'added-line',
          block: { start: 'added-start', end: 'added-end' },
        },
        {
          className: 'theme-code-block-removed-line',
          line: 'removed-line',
          block: { start: 'removed-start', end: 'removed-end' },
        },
      ],
    },
    metadata: [
      {
        name: 'keywords',
        content:
          'windows, api, dart, ffi, flutter, win32, com, development, desktop',
      },
    ],
  } satisfies Preset.ThemeConfig,

  trailingSlash: false,

  customFields: {
    description:
      'Unlock the full potential of Windows APIs in your Flutter and Dart apps with unparalleled ease and performance.',
  },
};

export default config;