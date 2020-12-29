<template>
  <div class="col-sm-8 conversation">
    <div class="row heading">
      <div class="col-sm-2 col-md-1 col-xs-3 heading-avatar">
        <div class="heading-avatar-icon">
          <img src="https://bootdey.com/img/Content/avatar/avatar6.png">
        </div>
      </div>
      <div class="col-sm-8 col-xs-7 heading-name">
        <a class="heading-name-meta">Chat: {{ chatId }}</a>
      </div>
    </div>

    <div class="row message" id="conversation">
      <Message
        v-for="message in messages"
        :key="message._id"
        :message="message"
      />
    </div>
  </div>
</template>

<script>
import Message from './Message.vue';

export default {
  components: { Message },
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