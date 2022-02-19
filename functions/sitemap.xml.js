const canonicalURL = "https://cdvl59.cf";
const commit = require('../commit.json');
const routes = [
  {
    path: "/",
    name: "Index",
    _updatedAt: commit.vue_cdvl59
  },
  {
    path: "/kite",
    name: "Kite",
    _updatedAt: commit.vue_cdvl59
  },
  {
    path: "/parapente",
    name: "Parapente",
    _updatedAt: commit.vue_cdvl59
  },
  {
    path: "/cerf-volant",
    name: "Cerf-Volant",
    _updatedAt: commit.vue_cdvl59
  },
  {
    path: "/boomerang",
    name: "Boomerang",
    _updatedAt: commit.vue_cdvl59
  },
  {
    path: "/comite-directeur",
    name: "Comité Directeur",
    _updatedAt: commit.vue_cdvl59
  },
];

let getRoutesXML = function (router, baseURL = canonicalURL) {
  //eslint-disable-line
  let list = "";
  for (let i = 0; i < router.length; i++) {
    if (router[i].path != undefined) {
      let lastmod = typeof (router[i]._updatedAt) === 'undefined' ? '' : `<lastmod>${router[i]._updatedAt}</lastmod>`;
      list += `<url><loc>${baseURL}${router[i].path}</loc>${lastmod}</url>\n`;
    }
  }
  return `<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="/sitemap.xsl" ?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
      ${list}
    </urlset>`;
};

export async function onRequestGet(context) { //eslint-disable-line
  let originUrl = (new URL(context.request.url)).origin;
  let stringXML = await getRoutesXML(routes, originUrl)
  return new Response(stringXML, {
    headers: {
      "content-type": "text/xml"
    }
  });


}