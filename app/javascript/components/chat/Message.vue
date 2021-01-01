<template>
  <div>
    <div :class="'flex mb-2' + (sentByMe ? ' justify-end' : '')">
      <div class="rounded py-2 px-3 shadow-md" :style="'background-color: ' + (sentByMe ? '#e2f7cb' : '#f2f2f2')">
        <p v-if="message.author" class="text-xs">{{ message.author.user }}</p>
        <div v-if="message.media_mime_type == 'image/jpeg'">
          <img class="mt-2" :src="'data:image/jpeg;base64,' + message.message_thumbnail_base64" alt="Image"/>
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

    // Get the message body according to the message type.
    body() {
      let body = "";
      switch(this.message.status) {
        case 'service':
          if (this.message.author && !this.message.data) {
            // Service message when somebody adds you to a chat.
            body = `${this.message.author.user} added you to the group.`
            // TODO: if this is not the group creator, then it is a "left the chat" or "removed you" message.
            // TODO: what about "removed someone"?
          }

          if (this.message.author && this.message.data) {
            if (this.isNumeric(this.message.data)) {
              // Initial message showing who created the group.
              body = `${this.message.author.user} added +${this.message.data} to the group.`
            } else {
              // Group name changed.
              body = `${this.message.author.user} renamed the group: "${this.message.data}"`
            }
          }
          break;
        default:
          body = this.message.data ?? this.message.media_caption;
          break;
      }

      return body;
    }
  },

  methods: {
    isNumeric(string) {
      return !isNaN(parseFloat(string));
    }
  }
};
</script>

<style>
</style>