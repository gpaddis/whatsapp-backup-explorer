<template>
  <div>
    <!-- Sent -->
    <div v-if="sentByMe" class="flex justify-end mb-2">
      <div class="rounded py-2 px-3" style="background-color: #e2f7cb">
        <p class="text-sm mt-1">{{ message.data }}</p>
        <p class="text-right text-xs text-grey-dark mt-1">{{ sentAt }}</p>
      </div>
    </div>

    <!-- Received -->
    <div v-else class="flex mb-2">
      <div class="rounded py-2 px-3" style="background-color: #f2f2f2">
        <p v-if="message.author" class="text-sm text-teal">{{ message.author.user }}</p>
        <p class="text-sm mt-1">{{ message.data }}</p>
        <p class="text-right text-xs text-grey-dark mt-1">{{ sentAt }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["message"],

  computed: {
    sentByMe() {
      return this.message.key_from_me == 1;
    },

    sentAt() {
      return new Date(this.message.timestamp).toLocaleString("de-de");
    },
  },
};
</script>

<style>
</style>