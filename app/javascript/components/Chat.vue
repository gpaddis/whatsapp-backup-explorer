<template>
  <div>
    <div class="row">
      <div class="col">
        <nav v-if="chatId" class="navbar navbar-light bg-light">
          <p>Chat: {{ chatId }}</p>
        </nav>
      </div>
    </div>

    <div class="row">
      <div class="col">
        <p v-if="chatId == null">
          Click on a chat to load the messages.
        </p>

        <ul>
          <li v-for="message in messages" :key="message._id">
            {{ message.data }}
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["chatId"],

  data() {
    return {
      messages: []
    }
  },

  watch: {
    chatId(newChatId) {
      this.loadMessages(newChatId)
    }
  },

  created() {
    if (this.chatId) {
      this.loadMessages(this.chatId);
    }
  },

  methods: {
    loadMessages(chatId) {
      axios
        .get(`http://localhost:3000/api/chats/${chatId}/messages`)
        .then((response) => (this.messages = response.data));
    }
  },
};
</script>

<style>
</style>