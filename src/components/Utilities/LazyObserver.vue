<template>
  <div>
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: "observer",
  data() {
    return {
      observer: null
    };
  },
  props: {
    root: {
      type: [Object],
      default: null
    },
    rootMargin: {
      type: [String, Number],
      default: "0px"
    },
    // means that the callback function will be executed as long as there is a target pixel present in the root element
    threshold: {
      type: [Array, Number],
      default: 0
    }
  },
  methods: {
    unobserve() {
      this.observer.unobserve(this.$el);
    }
  },
  mounted() {
    const options = {
      root: this.root,
      rootMargin: this.rootMargin,
      threshold: this.threshold
    };
    this.observer = new IntersectionObserver(entries => {
      this.$emit("on-change", entries[0], this.unobserve);
    }, options);
    this.observer.observe(this.$el);
  },
  beforeDestroy() {
    if (this.observer) {
      this.unobserve();
      this.observer = null;
    }
  }
};
</script>