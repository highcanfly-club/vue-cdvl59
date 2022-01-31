import { createApp } from 'vue'
import "@/assets/styles/index.css";
import App from "@/App.vue";

import { createWebHistory, createRouter } from "vue-router";
const routes = [
    {
            path: "/",
            component: () => import("@/views/Landing.vue"),
            name: "Index",
    },
    { path: "/:pathMatch(.*)*", redirect: "/" },
];
const router = createRouter({
    history: createWebHistory(),
    routes,
  });

  const app = createApp(App);
  app.use(router);
  app.mount("#app");
  