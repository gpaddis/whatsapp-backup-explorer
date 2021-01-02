<template>
  <div class="flex-1 overflow-auto" style="background-color: #dad3cc">
    <div v-for="(grouped_messages, date) in messages" :key="date">
      <div class="py-2 px-3">
        <service-message :simple-body="new Date(date).toLocaleDateString('de-de')" />

        <div v-for="message in grouped_messages" :key="message._id">
          <service-message v-if="message.status == 'service'" :message="message" />
          <message v-else :message="message" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Message from "./chat/Message.vue";
import ServiceMessage from "./chat/ServiceMessage"

export default {
  props: ['messages'],

  components: { Message, ServiceMessage }
};
</script>

<style>
</style>