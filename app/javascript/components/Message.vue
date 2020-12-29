<template>
  <div class="row">
    <div class="col-sm-12 mb-2">
      <div :class="sentByMe ? 'sender' : 'receiver'">
        <div class="message-text">
          {{ message.data }}
        </div>
        <span class="message-time pull-right"> Sun </span>
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
    }
  }
};
</script>

<style>
</style>