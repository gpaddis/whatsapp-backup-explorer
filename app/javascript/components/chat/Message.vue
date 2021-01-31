<template>
  <div>
    <div :class="'flex mb-2' + (sentByMe ? ' justify-end' : '')">
      <div
        :class="
          'rounded py-2 px-3 shadow-md ' + (sentByMe ? 'sent' : 'received')
        "
      >
        <p v-if="message.author" class="text-xs">{{ message.author.user }}</p>
        <!-- Pictures -->
        <div v-if="media_type == 'image/jpeg'">
          <img
            v-viewer
            class="mt-2 max-h-96 max-w-md object-contain"
            :src="
              message.media_file_path
                ? message.media_file_path
                : 'data:image/jpeg;base64,' + message.message_thumbnail_base64
            "
          />

          <p v-if="!message.media_file_path" class="text-sm mt-2 italic">
            The picture in full resolution is not available in your backup.
          </p>
        </div>

        <!-- Videos -->
        <!-- TODO: embed the base64 encoded media when exporting the chat. -->
        <div v-if="media_type && media_type.includes('video')" class="mt-2">
          <video
            v-if="message.media_file_path"
            class="mt-2 max-h-96 max-w-md object-contain"
            controls
          >
            <source :src="message.media_file_path" />
          </video>
          <p v-else class="text-sm mt-2 italic">
            This video is not available in your backup.
          </p>
        </div>

        <!-- Voice Messages -->
        <!-- TODO: embed the base64 encoded media when exporting the chat. -->
        <div v-if="media_type && media_type.includes('audio')" class="mt-2">
          <audio controls>
            <source :src="message.media_file_path" />
          </audio>
          <p v-if="!message.media_file_path" class="text-sm mt-2 italic">
            This audio is not available in your backup.
          </p>
        </div>

        <!-- Text -->
        <p
          class="text-sm mt-2"
          v-linkified:options="{
            className: 'underline text-blue-400 hover:text-blue-500',
          }"
        >
          {{ body }}
        </p>
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
      return new Date(this.message.timestamp)
        .toLocaleTimeString("de-de")
        .substring(0, 5);
    },

    body() {
      return this.message.data ?? this.message.media_caption;
    },

    media_type() {
      if (this.message.media_mime_type == "audio/ogg; codecs=opus") {
        return "audio/ogg";
      }

      return this.message.media_mime_type;
    },
  },
};
</script>

<style>
.sent {
  background-color: #e2f7cb;
}

.received {
  background-color: white;
}
</style>