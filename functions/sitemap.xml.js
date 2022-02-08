const canonicalURL = "https://cdvl59.cf";
const routes = [
    {
        path: "/index",
        name: "Index",
    },
    {
        path: "/tab_0",
        name: "Kite",
    },
    {
        path: "/tab_1",
        name: "Parapente",
    },
    {
        path: "/tab_2",
        name: "Cerf-Volant",
    },
    {
        path: "/tab_3",
        name: "Boomerang",
    },
    {
        path: "/tab_5",
        name: "Comité Directeur",
    },
];

let getRoutesXML = function (router,baseURL = canonicalURL) {
    //eslint-disable-line
    let list = "";
    for (let i = 0; i < router.length; i++) {
      if (router[i].path != undefined)
        list += `<url><loc>${baseURL}${router[i].path}</loc></url>\n`;
    }
    return `<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
      ${list}
    </urlset>`;
  };

export async function onRequestGet(context) { //eslint-disable-line

    let stringXML = await getRoutesXML(routes,canonicalURL)
    return new Response(stringXML, {
        headers: {
          "content-type": "text/xml"
        }
      });


}