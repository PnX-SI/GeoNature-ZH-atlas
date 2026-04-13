
## Cloner le projet :

En https :

```sh
git clone https://github.com/PnX-SI/GeoNature-ZH-atlas.git
cd GeoNature-ZH-atlas
```

En ssh :

```sh
git clone git@github.com:PnX-SI/GeoNature-ZH-atlas.git
cd GeoNature-ZH-atlas
```

## Installation avec `npm`

<div class="termy">

```console
npm install

---> 100%
```

</div>

## Lancer le projet en mode développement

<div class="termy">

```console
npm run dev

---> 100%

> atlas@1.0.0 dev
> next dev

ready - started server on 0.0.0.0:3000, url: http://localhost:3000
Defining routes from exportPathMap
event - compiled client and server successfully in 901 ms (1078 modules)
```

</div>

## Build

<div class="termy">

```console
npm run build

---> 100%

> atlas@1.0.0 build /geonature/atlas
> next build

info  - Using webpack 5. Reason: Enabled by default https://nextjs.org/docs/messages/webpack5
info  - Checking validity of types
info  - Creating an optimized production build
info  - Compiled successfully
info  - Collecting page data
info  - Generating static pages (4/4)
info  - Finalizing page optimization

Page                              Size     First Load JS
┌ ○ /                             4.22 kB         122 kB
├   /_app                         0 B            82.5 kB
├ ○ /404                          194 B          82.7 kB
├ ○ /map                          27.8 kB         141 kB
└ λ /map/[slug]                   5.59 kB         129 kB
+ First Load JS shared by all     82.5 kB
  ├ chunks/framework.1eefeb.js    42.6 kB
  ├ chunks/main.f881ac.js         23.6 kB
  ├ chunks/pages/_app.57d825.js   14.4 kB
  ├ chunks/webpack.7cb7ed.js      1.94 kB
  └ css/27d968ccce4b3fdeec32.css  277 B

λ  (Server)  server-side renders at runtime (uses getInitialProps or getServerSideProps)
○  (Static)  automatically rendered as static HTML (uses no initial props)
●  (SSG)     automatically generated as static HTML + JSON (uses getStaticProps)
   (ISR)     incremental static regeneration (uses revalidate in getStaticProps)
```

</div>

## Lancer le projet

<div class="termy">

```console
npm start

---> 100%

> atlas@1.0.0 start /geonature/atlas
> next start

ready - started server on 0.0.0.0:3000, url: http://localhost:3000
```

</div>
