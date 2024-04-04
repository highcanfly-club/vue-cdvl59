<template>
  <div>
    <h1
      class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl"
    >
      <div class="flex-col">
        <div>
          <span class="block text-indigo-500 xl:inline">Kite</span>
        </div>
        <div>
          <span class="block text-slate-500 xl:inline"> au </span>
          <span class="block text-indigo-700 xl:inline">CDVL 59</span>
        </div>
      </div>
    </h1>
    <div>
      <p
        class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0"
      >
        Toutes les formes de kite se pratiquent dans le Nord<br />
        Sur la plage ou dans l'eau. Jouez avec le vent<br />
        Licenciez-vous dans un club du Nord.
      </p>
    </div>
    <div>
      <lazy-observer @on-change="onChange">
        <club-card ref="clubsParapente" :lazy="true" clubType="kite" />
      </lazy-observer>
    </div>
    <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
      <div class="rounded-md shadow">
        <a
          href="mailto:comite.directeur@cdvl59.eu.org"
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
</template>
<script>
import ClubCard from "@/cards/ClubCard.vue";
import LazyObserver from "@/components/Utilities/LazyObserver.vue";

export default {
  components: {
    ClubCard,
    LazyObserver,
  },
  methods: {
    onChange(entry, unobserve) {
      if (entry.isIntersecting) {
        unobserve();
        this.$refs.clubsParapente.fetchData();
      }
    },
  },
  setup() {},
};
</script>