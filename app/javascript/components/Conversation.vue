<template>
  <div class="flex-1 overflow-auto" style="background-color: #dad3cc">
    <div v-for="(grouped_messages, date) in messages" :key="date">
      <div class="py-2 px-3">
        <div class="flex justify-center mb-2">
          <div
            class="rounded py-2 px-4 shadow-md"
            style="background-color: #ddecf2"
          >
            <p class="text-sm uppercase">
              {{ new Date(date).toLocaleDateString("de-de") }}
            </p>
          </div>
        </div>

        <message
          v-for="message in grouped_messages"
          :key="message._id"
          :message="message"
        />
      </div>
    </div>
  </div>
</template>

<script>
import Message from "./chat/Message.vue";

export default {
  props: ['messages'],

  components: { Message }
};
</script>

<style>
</style>