<!-- This example requires Tailwind CSS v2.0+ -->
<template>
  <div>
    <div class="relative bg-white overflow-hidden">
      <div class="max-w-7xl mx-auto">
        <div
          class="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32"
        >
          <svg
            class="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2"
            fill="currentColor"
            viewBox="0 0 100 100"
            preserveAspectRatio="none"
            aria-hidden="true"
          >
            <polygon points="50,0 100,0 50,100 0,100" />
          </svg>
          <div><Header /></div>

          <main
            class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28"
          >
            <div class="sm:text-center lg:text-left">
              <h1
                class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl"
              >
                <div class="flex-col">
                  <diV
                    ><span class="block text-indigo-500 xl:inline"
                      >Comité Départemental</span
                    ></diV
                  >
                  <div>
                    <span class="block text-slate-300 xl:inline">de&nbsp;</span>
                    <span class="block text-indigo-700 xl:inline"
                      >Vol Libre
                    </span>
                  </div>
                  <div>
                    <span class="block text-slate-300 xl:inline">du</span
                    ><span class="block text-indigo-500 xl:inline"> Nord</span>
                  </div>
                </div>
              </h1>
              <p
                class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0"
              >
                Donnez de l'air à vos envies !<br />
                Nos activités dans le Nord<br />
                Du littoral aux plaines et aux terrils. Venez jouer avec le
                vent.
              </p>
              <div
                class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start"
              >
                <div class="rounded-md shadow">
                  <a
                    href="mailto:comite@cdvl59.fr"
                    class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 md:py-4 md:text-lg md:px-10"
                  >
                    Contactez-nous
                  </a>
                </div>
                <div class="mt-3 sm:mt-0 sm:ml-3">
                  <a
                    href="https://www.facebook.com/Comité-Départemental-de-Vol-Libre-du-Nord-2518839258194595/"
                    class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 md:py-4 md:text-lg md:px-10"
                  >
                    Suivez-nous sur Facebook
                  </a>
                </div>
              </div>
            </div>
          </main>
        </div>
      </div>
      <div
        class="relative lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2 align-items-right"
      >
        <picture>
          <source srcset="@/assets/img/kitesurf.webp" type="image/webp" />
          <source srcset="@/assets/img/kitesurf.jpg" type="image/jpeg" />
          <img
            class="object-cover h-56 w-full sm:h-72 md:h-96 lg:w-full lg:h-full"
            src="@/assets/img/kitesurf.jpg"
            alt="Kite sur la côte"
          />
        </picture>
        <img
          class="object-cover absolute top-1 right-2 h-1/5"
          src="@/assets/img/LogoCDVL59.svg"
        />
      </div>
    </div>
    <div><Footer /></div>
  </div>
</template>

<script>
import Header from "@/headers/Header.vue";
import Footer from "@/footers/Footer.vue";

export default {
  description:
    "Le comité départemental de vol libre du Nord fédère les clubs de kite-surf, de deltaplane, de cerf-volant, de parapente et de boomerang du Nord",
  title: "Comité départemental de Vol Libre du Nord",
  components: {
    Header,
    Footer,
  },
  setup() {
    return {};
  },
};
</script>
