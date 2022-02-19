<template>
  <footer class="relative  pt-8 pb-6">
    <div
      class="
        bottom-auto
        top-0
        left-0
        right-0
        w-full
        absolute
        pointer-events-none
        overflow-hidden
        -mt-20
        h-20
      "
      style="transform: translateZ(0)"
    >

    </div>
    <div class="container mx-auto px-4">
              <hr class="my-6 border-slate-300" />
      <div class="flex flex-wrap text-center lg:text-left">
        <div class="w-full lg:w-6/12 px-4">
          <h4 class="text-xl font-semibold text-slate-500">Comité Départemental de Vol Libre du Nord</h4>
          <h5 class="text-base mt-0 mb-2 text-slate-400">
            2, digue Nicolas II
            <br />Base de voile de la Licorne<br/>
            59240 Dunkerque
          </h5>
          <div class="mt-6 lg:mb-0 mb-6">
  
          </div>
        </div>
        <div class="w-full lg:w-6/12 px-4">
          <div class="flex flex-wrap items-top mb-6">
            <div class="text-slate-400 w-full lg:w-5/12 px-4">
              <span
                class="
                  block
                  uppercase
                  text-slate-500 text-xs
                  font-semibold
                  mb-2
                "
                >Liens utiles</span
              >
              <ul class="list-unstyled">
                <li>
                  <a
                    class="
                      text-slate-400
                      hover:text-slate-800
                      font-semibold
                      block
                      pb-2
                      text-xs
                    "
                    href="https://www.ffvl.fr"
                    >Fédération Française de Vol Libre</a
                  >
                </li>
                <li>
                  <a
                    class="
                      text-slate-400
                      hover:text-slate-800
                      font-semibold
                      block
                      pb-2
                      text-xs
                    "
                    href="/sitemap.xml"
                    >Plan du site</a
                  >
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div
        class="flex flex-wrap items-center md:justify-between justify-center"
      >
        <div class="w-full md:w-5/12 px-4 mx-auto text-center">
          <div class="text-xs text-slate-500 font-semibold py-1">
            <a
              href="https://cdvl59.cf"
              class="text-slate-500 hover:text-slate-800"
              >Copyright © Comité Départemental de Vol Libre du Nord - 2021-{{ date }}</a
            >
            .
          </div>
        </div>
      </div>
    </div>

    <VueScrollUp
      tag="div"
      :scroll-duration="1000"
      :scroll-y="250">
      <img style="position: absolute;" src="@/assets/img/arrow-top.svg"/>
    </VueScrollUp>
  </footer>
</template>y
<style scoped>
.vue-scroll-up {
  align-items: center;
  background-color: rgba(0, 0, 0, 0.658);
  border: rgba(0, 0, 0, 0.658);
  border-radius: 100px;
  bottom: 10px;
  color: white;
  cursor: pointer;
  display: flex;
  height: 55px;
  justify-content: center;
  position: fixed;
  right: 10px;
  width: 55px;
  z-index: 99;
}

/* .vue-scroll-up::after {
  border: 2px solid white;
  border-radius: 10px;
  content: '';
  display: block;
  height: 25px;
  margin: 0 auto;
  width: 10px;
} */

.vue-scroll-up::before {
  animation: 2s top infinite;
  border: 1px solid white;
  border-radius: 10px;
  content: '';
  display: block;
  height: 10px;
  left: 48%;
  position: absolute;
  width: 0;
}

@keyframes top {
  0% {
    opacity: 0;
    transform: translateY(10px);
  }

  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

@media screen and (max-width: 450px) {
  .vue-scroll-up {
    bottom: 10px;
    transform: translateX(5px) scale(0.7);
  }
}
</style>
<script>
import VueScrollUp from '@/plugins/vue-scroll-up';
export default {
  data() {
    return {
      date: new Date().getFullYear(),
    };
  },
  components: {
    VueScrollUp,
  }
};
</script>
