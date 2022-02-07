<template>
  <Popover>
    <div class="relative pt-6 px-4 sm:px-6 lg:px-8">
      <nav
        class="relative flex items-center justify-between sm:h-10 lg:justify-start"
        aria-label="Global"
      >
        <div class="flex items-center flex-grow flex-shrink-0 lg:flex-grow-0">
          <div class="flex items-center justify-between w-full md:w-auto">
            <a href="#">
              <span class="sr-only">Workflow</span>
              <img
                @click="toggleTabs(-1)"
                class="h-8 w-auto sm:h-10"
                src="@/assets/img/cdvl59carre-indigo-700.svg"
              />
            </a>
            <div class="-mr-2 flex items-center md:hidden">
              <PopoverButton
                class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
              >
                <span class="sr-only">Ouvrir le menu</span>
                <MenuIcon class="h-6 w-6" aria-hidden="true" />
              </PopoverButton>
            </div>
          </div>
        </div>
        <div
          class="hidden md:flex md:content-evenly md:ml-10 md:pr-4 md:space-x-8"
        >
          <!--
          <a
            v-for="item in navigation"
            :key="item.name"
            :href="item.href"
            class="whitespace-nowrap font-medium text-gray-500 hover:text-gray-900"
            >{{ item.name }}</a
          >
          <a
            href="#"
            class="whitespace-nowrap font-medium text-indigo-600 hover:text-indigo-500"
            >Comité directeur</a
          >-->
          <ul class="flex px-5">
            <li
              v-for="(item, index) in navigation"
              :key="item.name"
              :href="item.href"
              @click="toggleTabs(index)"
              class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer"
            >
              <div class="flex items-center mb-3">
                <span class="ml-1 text-gray-500 hover:text-gray-900">{{
                  item.name
                }}</span>
              </div>
              <div v-bind:class="{'hidden': tabNumber !== index, 'block': tabNumber === index}" class="w-full h-1 bg-indigo-600 rounded-t-md"></div>
            </li>
            <li
              @click="toggleTabs(5)"
              class="whitespace-nowrap font-medium border-indigo-700 pt-3 rounded-t text-indigo-600 mr-12 cursor-pointer"
            >
              <div class="flex items-center mb-3">
                <span class="ml-1 text-indigo-600 hover:text-indigo-500"
                  >Comité directeur</span
                >
              </div>
              <div v-bind:class="{'hidden': tabNumber !== 5, 'block': tabNumber === 5}" class="w-full h-1 bg-indigo-600 rounded-t-md"></div>
            </li>
          </ul>
        </div>
      </nav>
    </div>

    <transition
      enter-active-class="duration-150 ease-out"
      enter-from-class="opacity-0 scale-95"
      enter-to-class="opacity-100 scale-100"
      leave-active-class="duration-100 ease-in"
      leave-from-class="opacity-100 scale-100"
      leave-to-class="opacity-0 scale-95"
    >
      <PopoverPanel
        focus
        class="absolute z-10 top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden"
      >
        <div
          class="rounded-lg shadow-md bg-white ring-1 ring-black ring-opacity-5 overflow-hidden"
        >
          <div class="px-5 pt-4 flex items-center justify-between">
            <div>
              <img
                class="h-8 w-auto"
                src="@/assets/img/cdvl59carre-indigo-700.svg"
                alt=""
              />
            </div>
            <div class="-mr-2">
              <PopoverButton
                class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
              >
                <span class="sr-only">Fermer le menu</span>
                <XIcon class="h-6 w-6" aria-hidden="true" />
              </PopoverButton>
            </div>
          </div>
          <div class="flex items-end px-2 pt-2 pb-3 space-y-1">
            <a
              v-for="item in navigation"
              :key="item.name"
              :href="item.href"
              class="block px-3 py-2 whitespace-nowrap rounded-md text-base font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-50"
              >{{ item.name }}</a
            >

            <a
              href="#"
              class="block w-full px-3 py-2 whitespace-nowrap text-center font-medium text-indigo-600 bg-gray-50 hover:bg-gray-100"
            >
              Comité directeur
            </a>
          </div>
        </div>
      </PopoverPanel>
    </transition>
  </Popover>
</template>
<script>
import {ref} from "vue";
import { Popover, PopoverButton, PopoverPanel } from "@headlessui/vue";
import { MenuIcon, XIcon } from "@heroicons/vue/outline";
const navigation = [
  { name: "Kite", href: "#" },
  { name: "Parapente", href: "#" },
  { name: "Cerf-volant", href: "#" },
  { name: "Boomerang", href: "#" },
];
export default {
  components: {
    Popover,
    PopoverButton,
    PopoverPanel,
    MenuIcon,
    XIcon,
  },
  data() {
    return {
      tabNumber: ref(-1),
    };
  },
  setup() {
    return {
      navigation,
    };
  },
  methods: {
    toggleTabs: function (tabNumber) {
      this.tabNumber = tabNumber;
      this.$emit('toggleTabs',tabNumber);
    },
  },
};
</script>
