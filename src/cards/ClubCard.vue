<template>
  <div class="bg-white">
    <loading-spinner v-if="loading" />
    <div
      class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8"
    >
      <h2 class="sr-only">Clubs</h2>

      <div
        class="grid grid-cols-1 gap-y-10 sm:grid-cols-2 gap-x-6 lg:grid-cols-3 xl:grid-cols-4 xl:gap-x-8"
      >
        <a v-for="club in clubs" :key="club._id" :href="club.web" class="group">
          <div
            class="w-full aspect-w-1 aspect-h-1 bg-gray-50 rounded-lg overflow-hidden xl:aspect-w-7 xl:aspect-h-8"
          >
            <img
              :src="imageUrlFor(club.logo).width(600)"
              :alt="club.web"
              class="w-full h-full object-center object-cover group-hover:opacity-75"
            />
          </div>
          <h3 class="mt-4 text-sm text-gray-700">
            {{ club.name }}
          </h3>
          <p class="mt-1 text-lg font-medium text-gray-900">
            {{ club.price }}
          </p>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import LoadingSpinner from "@/components/Utilities/ComponentLoadingSpinner.vue";
import { defineComponent, h } from "vue";
import sanity from "@/plugins/sanity-client";
import imageUrlBuilder from "@sanity/image-url";

const imageBuilder = imageUrlBuilder(sanity);

const imageSerializer = {
  types: {
    image: defineComponent({
      props: ["asset"],
      setup(props) {
        return () => h("img", { src: props.asset.url, class: "inline" });
      },
    }),
  },
};


export default {
  props: ["lazy","clubType"],
  data() {
    return {
      loading: true,
      clubs: [],
      error: null,
      imageSerializer,
    };
  },
  created() {
    if (!this.$props.lazy)
    {this.fetchData(this.$props.clubType ? this.$props.clubType : '');}
  },
  methods: {
    imageUrlFor(source) {
      return imageBuilder.image(source);
    },
    fetchData(clubType = this.$props.clubType) {
      //console.log(`Lazy load clubType='${clubType}'`);
      const query = `*[_type == "club" && type->name == "${clubType}" ] | order(name asc)`;
      this.error = this.post = null;
      this.loading = true;
      sanity.fetch(query).then(
        (clubs) => {
          this.loading = false;
          this.clubs = clubs;
        },
        (error) => {
          this.error = error;
        }
      );
    },
  },
  components: {
    LoadingSpinner,
  },
};
</script>
