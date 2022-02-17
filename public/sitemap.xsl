<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>Comité Départemental de Vol Libre du Nord - Plan du site</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<meta name="robots" content="all" />
				<meta name="Description" content="CDVL59 Plan du Site en XML" />
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<script src="https://cdn.tailwindcss.com"></script>
				<script>
    tailwind.config = {
  content: [
    "./src/**/*.html",
    "./src/*.html",
    "./src/**/*.js",
    "./src/*.js",
    "./src/**/*.vue",
    "./src/*.vue",
  ],
  theme: {

    extend: {
      colors: {
        "hcfdark": "#0e6835",
        "hcflight": "#95be1f",
        "hcfcardinal": "#882647",
        "hcfgreen": "#39B54A",
        'camelot': {
          '50': '#f9f4f6',
          '100': '#f3e9ed',
          '200': '#e1c9d1',
          '300': '#cfa8b5',
          '400': '#ac677e',
          '500': '#882647',  //HighCanFly Purple = hcfcardinal
          '600': '#7a2240',
          '700': '#661d35',
          '800': '#52172b',
          '900': '#431323'
        },
        'watermelon': {
          '50': '#f3f7f5',
          '100': '#e7f0eb',
          '200': '#c3d9cd',
          '300': '#9fc3ae',
          '400': '#569572',
          '500': '#0e6835',   //HighCanFly Dark = hcfdark
          '600': '#0d5e30',
          '700': '#0b4e28',
          '800': '#083e20',
          '900': '#07331a'
        },
        'pistachio': {
          '50': '#fafcf4',
          '100': '#f4f9e9',
          '200': '#e5efc7',
          '300': '#d5e5a5',
          '400': '#b5d262',
          '500': '#95be1f',   //HighCanFly Light = hcflight
          '600': '#86ab1c',
          '700': '#708f17',
          '800': '#597213',
          '900': '#495d0f'
        },
        'apple': {
          '50': '#f5fbf6',
          '100': '#ebf8ed',
          '200': '#ceedd2',
          '300': '#b0e1b7',
          '400': '#74cb80',
          '500': '#39B54A',   //HighCanFly Green = hcfgreen
          '600': '#33a343',
          '700': '#2b8838',
          '800': '#226d2c',
          '900': '#1c5924'
        }
      },
      fontSize: {
        "55": "55rem",
      },
      opacity: {
        "80": ".8",
      },
      zIndex: {
        "2": 2,
        "3": 3,
      },
      inset: {
        "-100": "-100%",
        "-225-px": "-225px",
        "-160-px": "-160px",
        "-150-px": "-150px",
        "-94-px": "-94px",
        "-50-px": "-50px",
        "-29-px": "-29px",
        "-20-px": "-20px",
        "25-px": "25px",
        "40-px": "40px",
        "95-px": "95px",
        "145-px": "145px",
        "195-px": "195px",
        "210-px": "210px",
        "260-px": "260px",
      },
      height: {
        "95-px": "95px",
        "70-px": "70px",
        "350-px": "350px",
        "500-px": "500px",
        "600-px": "600px",
        "screen-1/2": "50vh",
        "screen-1/3": "calc(100vh / 3)",
        "screen-2/3": "calc(2 * 100vh / 3)",
        "screen-1/4": "calc(100vh / 4)",
        "screen-3/4": "calc(3 * 100vh / 4)",
        "screen-1/5": "calc(100vh / 5)",
        "screen-2/5": "calc(2 * 100vh / 5)",
        "screen-3/5": "calc(3 * 100vh / 5)",
        "screen-4/5": "calc(4 * 100vh / 5)",
        "screen-1/6": "calc(100vh / 6)",
        "screen-5/6": "calc(5 * 100vh / 6)",
      },
      minHeight: {
        "95-px": "95px",
        "70-px": "70px",
        "350-px": "350px",
        "500-px": "500px",
        "600-px": "600px",
        "screen-75": "75vh",
        "screen-1/2": "50vh",
        "screen-1/3": "calc(100vh / 3)",
        "screen-2/3": "calc(2 * 100vh / 3)",
        "screen-1/4": "calc(100vh / 4)",
        "screen-3/4": "calc(3 * 100vh / 4)",
        "screen-1/5": "calc(100vh / 5)",
        "screen-2/5": "calc(2 * 100vh / 5)",
        "screen-3/5": "calc(3 * 100vh / 5)",
        "screen-4/5": "calc(4 * 100vh / 5)",
        "screen-1/6": "calc(100vh / 6)",
        "screen-5/6": "calc(5 * 100vh / 6)",
      },
      maxHeight: {
        "860-px": "860px",
      },
      maxWidth: {
        "100-px": "100px",
        "120-px": "120px",
        "150-px": "150px",
        "180-px": "180px",
        "200-px": "200px",
        "210-px": "210px",
        "580-px": "580px",
      },
      minWidth: {
        "140-px": "140px",
        "48": "12rem",
      },
      backgroundSize: {
        full: "100%",
      },
    },
  },
  variants: [
    "responsive",
    "group-hover",
    "focus-within",
    "first",
    "last",
    "odd",
    "even",
    "hover",
    "focus",
    "active",
    "visited",
    "disabled",
  ],
}
				</script>
			</head>
			<body>
				<div>
					<div>
						<div class="relative pt-6 px-4 sm:px-6 lg:px-8">
							<nav class="relative flex items-center justify-between sm:h-10 lg:justify-start" aria-label="Global">
								<div class="flex items-center flex-grow flex-shrink-0 lg:flex-grow-0">
									<div class="flex items-center justify-between w-full md:w-auto">
										<a href="/">
											<span class="sr-only">Workflow</span>
											<img class="h-8 w-auto sm:h-10" src="/assets/img/cdvl59carre-indigo-700.svg" />
										</a>
									</div>
								</div>
								<div class="hidden md:flex md:content-evenly md:ml-10 md:pr-4 md:space-x-8">
									<ul class="flex px-5">
										<li href="#" class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer">
											<div class="flex items-center mb-3">
												<span class="ml-1 text-gray-500 hover:text-gray-900">
													<a href="/tab_0">Kite</a>
												</span>
											</div>
											<div class="hidden w-full h-1 bg-indigo-600 rounded-t-md"></div>
										</li>
										<li href="#" class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer">
											<div class="flex items-center mb-3">
												<span class="ml-1 text-gray-500 hover:text-gray-900">
													<a href="/tab_1">Parapente</a>
												</span>
											</div>
											<div class="hidden w-full h-1 bg-indigo-600 rounded-t-md"></div>
										</li>
										<li href="#" class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer">
											<div class="flex items-center mb-3">
												<span class="ml-1 text-gray-500 hover:text-gray-900">
													<a href="/tab_2">Cerf-volant</a>
												</span>
											</div>
											<div class="hidden w-full h-1 bg-indigo-600 rounded-t-md"></div>
										</li>
										<li href="#" class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer">
											<div class="flex items-center mb-3">
												<span class="ml-1 text-gray-500 hover:text-gray-900">
													<a href="/tab_3">Boomerang</a>
												</span>
											</div>
											<div class="hidden w-full h-1 bg-indigo-600 rounded-t-md"></div>
										</li>
										<li class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer">
											<div class="flex items-center mb-3">
												<span class="ml-1 text-indigo-600 hover:text-indigo-500">
													<a href="/tab_5">Comité directeur</a>
												</span>
											</div>
											<div class="hidden w-full h-1 bg-indigo-600 rounded-t-md"></div>
										</li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
				<div>
					<h1 class="mt-10 sm:mx-2 text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl sm:text-left text-center">
						<div class="flex-col">
							<div>
								<span class="block text-indigo-500 xl:inline">Comité Départemental</span>
							</div>
							<div>
								<span class="block text-slate-300 xl:inline">de&#160;</span>
								<span class="block text-indigo-700 xl:inline">Vol Libre </span>
							</div>
							<div>
								<span class="block text-slate-300 xl:inline">du</span>
								<span class="block text-indigo-500 xl:inline"> Nord</span>
							</div>
						</div>
					</h1>
				</div>
				<div class="my-4 not-prose relative bg-slate-50 rounded-xl overflow-hidden dark:bg-slate-800/25">
					<div style="background-position:10px 10px;" class="absolute inset-0 bg-grid-slate-100 [mask-image:linear-gradient(0deg,#fff,rgba(255,255,255,0.6))] dark:bg-grid-slate-700/25 dark:[mask-image:linear-gradient(0deg,rgba(255,255,255,0.1),rgba(255,255,255,0.5))]"></div>
					<div class="relative rounded-xl overflow-auto">
						<div class="shadow-sm overflow-hidden">
							<table class="border-collapse table-auto w-full text-sm">
								<thead>
									<tr >
										<th class="border-b dark:border-slate-600 font-medium p-4 pl-8 pt-0 pb-3 text-indigo-500 dark:text-slate-200 text-left">Adresse</th>
										<th class="border-b dark:border-slate-600 font-medium p-4 pl-8 pt-0 pb-3 text-indigo-500 dark:text-slate-200 text-left">Dernière mise à jour</th>
									</tr>
								</thead>
								<tbody>
									<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
									<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
									<xsl:for-each select="sitemap:urlset/sitemap:url">
										<tr>
											<xsl:if test="position() mod 2 != 0">
												<xsl:attribute name="class">bg-white</xsl:attribute>
											</xsl:if>
											<td class="border-b border-slate-100 dark:border-slate-700 p-4 pl-8 text-slate-500 dark:text-slate-400">
												<xsl:variable name="itemURL">
													<xsl:value-of select="sitemap:loc"/>
												</xsl:variable>
												<a href="{$itemURL}">
													<xsl:value-of select="sitemap:loc"/>
												</a>
											</td>
											<td class="border-b border-slate-100 dark:border-slate-700 p-4 pl-8 text-slate-500 dark:text-slate-400">
												<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)))"/>
											</td>
										</tr>
									</xsl:for-each>


								</tbody>
							</table>
						</div>
					</div>
					<div class="absolute inset-0 pointer-events-none border border-black/5 rounded-xl dark:border-white/5"></div>
				</div>
				<footer class="relative pt-8 pb-6">
					<div class="bottom-auto top-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden -mt-20 h-20" style="transform: translateZ(0px);"></div>
					<div class="container mx-auto px-4">
						<hr class="my-6 border-slate-300" />
						<div class="flex flex-wrap text-center lg:text-left">
							<div class="w-full lg:w-6/12 px-4">
								<h4 class="text-xl font-semibold text-slate-500">Comité Départemental de Vol Libre du Nord</h4>
								<h5 class="text-base mt-0 mb-2 text-slate-400"> 
								<pre class="text-base font-sans mt-0 mb-2 text-slate-400">2, digue Nicolas II
Base de voile de la Licorne
59240 Dunkerque </pre></h5>
							<div class="mt-6 lg:mb-0 mb-6"></div>
						</div>
						<div class="w-full lg:w-6/12 px-4">
							<div class="flex flex-wrap items-top mb-6">
								<div class="text-slate-400 w-full lg:w-5/12 px-4">
									<span class="block uppercase text-slate-500 text-xs font-semibold mb-2">Liens utiles</span>
									<ul class="list-unstyled">
										<li >
											<a class="text-slate-400 hover:text-slate-800 font-semibold block pb-2 text-xs" href="https://www.ffvl.fr">Fédération Française de Vol Libre</a>
										</li>
										<li >
											<a class="text-slate-400 hover:text-slate-800 font-semibold block pb-2 text-xs" href="/sitemap.xml">Plan du site</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="flex flex-wrap items-center md:justify-between justify-center">
						<div class="w-full md:w-5/12 px-4 mx-auto text-center">
							<div class="text-xs text-slate-500 font-semibold py-1">
								<a href="https://cdvl59.cf" class="text-slate-500 hover:text-slate-800">Copyright © Comité Départemental de Vol Libre du Nord - 2021-2022</a> . 
							</div>
						</div>
					</div>
				</div>
			</footer>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>