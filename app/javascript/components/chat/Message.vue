<template>
  <div>
    <div :class="'flex mb-2' + (sentByMe ? ' justify-end' : '')">
      <div class="rounded py-2 px-3 shadow-md" :style="'background-color: ' + (sentByMe ? '#e2f7cb' : '#f2f2f2')">
        <p v-if="message.author" class="text-xs">{{ message.author.user }}</p>
        <div v-if="message.media_mime_type == 'image/jpeg'">
          <img class="mt-2" :src="'data:image/jpeg;base64,' + message.message_thumbnail_base64" alt="Image"/>
        </div>
        <div v-if="message.media_mime_type == 'audio/ogg; codecs=opus'">
          <audio controls>
            <!-- TODO: calculate the correct path to the audio file. -->
            <source src="foobar.ogg" type="audio/ogg">
          Your browser does not support the audio element.
          </audio>
        </div>
        <p class="text-sm mt-2">{{ body }}</p>
        <p class="text-right text-xs text-gray-700 mt-1">{{ sentAt }}</p>
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
      return new Date(this.message.timestamp).toLocaleTimeString("de-de").substring(0, 5);
    },

    body() {
      return this.message.data ?? this.message.media_caption;
    }
  }
};
</script>

<style>
</style>