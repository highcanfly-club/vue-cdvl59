import { createApp } from 'vue'
import "@/assets/styles/index.css";
import metaMixin from "@/mixins/MetaMixin";
import App from "@/App.vue";
import LandingView from "@/views/LandingView.vue";

import { createWebHistory, createRouter } from "vue-router";
const routes = [
    {
        path: "/",
        component: LandingView,
        name: "Index",
    },
    {
        path: "/:initialtab",
        component: LandingView,
        name: "Tab",
    },
    { path: "/:pathMatch(.*)*", redirect: "/" },
];
const router = createRouter({
    history: createWebHistory(),
    routes,
});

const app = createApp(App);
app.use(router);
app.mixin(metaMixin);
app.mount("#app");
