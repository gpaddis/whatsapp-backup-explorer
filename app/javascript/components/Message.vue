<template>
  <div class="row">
    <div class="col-sm-12 mb-2">
      <div :class="sentByMe ? 'sender' : 'receiver'">
        <div class="message-text">
          <div v-if="!sentByMe && message.author">
            <small class="text-muted">{{ message.author.user }}</small>
          </div>
          <div>
            {{ message.data }}
          </div>
        </div>
        <span class="message-time pull-right">
          {{ sentAt }}
        </span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['message'],

  computed: {
    sentByMe() {
      return this.message.key_from_me == 1
    },

    sentAt() {
      return new Date(this.message.timestamp).toLocaleString("de-de")
    }
  }
};
</script>

<style>
</style>