<template>
  <div class="w-2/3 border flex flex-col">
    <!-- Header -->
    <div class="py-2 px-3 flex flex-row justify-between items-center">
      <div class="flex items-center" @click="toggleInfo()">
        <div>
          <img class="w-10 h-10 rounded-full" src="/images/whatsapp-user.png" />
        </div>
        <div class="ml-4">
          <p class="text-black">{{ heading }}</p>
          <p class="text-gray-800 text-xs mt-1">
            {{ users.join(", ") }}
          </p>
        </div>
      </div>

      <div class="flex">
        <div>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24"
            width="24"
            height="24"
          >
            <path
              fill="#263238"
              fill-opacity=".5"
              d="M15.9 14.3H15l-.3-.3c1-1.1 1.6-2.7 1.6-4.3 0-3.7-3-6.7-6.7-6.7S3 6 3 9.7s3 6.7 6.7 6.7c1.6 0 3.2-.6 4.3-1.6l.3.3v.8l5.1 5.1 1.5-1.5-5-5.2zm-6.2 0c-2.6 0-4.6-2.1-4.6-4.6s2.1-4.6 4.6-4.6 4.6 2.1 4.6 4.6-2 4.6-4.6 4.6z"
            ></path>
          </svg>
        </div>
        <div class="ml-6">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24"
            width="24"
            height="24"
          >
            <path
              fill="#263238"
              fill-opacity=".6"
              d="M12 7a2 2 0 1 0-.001-4.001A2 2 0 0 0 12 7zm0 2a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 9zm0 6a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 15z"
            ></path>
          </svg>
        </div>
      </div>
    </div>

    <!-- Main body -->
    <conversation v-if="view == 'conversation'" :messages="messages" />
    <chat-info v-else-if="view == 'info'" :data="details" />
  </div>
</template>

<script>
import ChatInfo from './chat/Info.vue';
import Conversation from './Conversation.vue';

export default {
  components: { ChatInfo, Conversation },
  props: ["chatId"],

  data() {
    return {
      messages: [],
      details: {},
      view: "conversation",
    };
  },

  watch: {
    chatId(newChatId) {
      this.loadMessages(newChatId);
      this.loadDetails(newChatId);
    },
  },

  created() {
    if (this.chatId) {
      this.loadMessages(this.chatId);
      this.loadDetails(this.chatId);
    }
  },

  computed: {
    heading() {
      if (this.details.hasOwnProperty("group_owner")) {
        return this.details.subject ?? this.details.group_owner.user;
      }
    },

    users() {
      if (this.details.hasOwnProperty("group_owner")) {
        return this.details.users.map((user) => user.user).filter(String);
      }
      return [];
    },
  },

  methods: {
    loadMessages(chatId) {
      axios
        .get(`http://localhost:3000/api/chats/${chatId}/messages`)
        .then((response) => (this.messages = this.groupByDate(response.data)));
    },

    groupByDate(messages) {
      return messages.reduce((res, message) => {
        let messageDate = new Date(message.timestamp)
          .toISOString()
          .substring(0, 10);
        if (!res[messageDate]) {
          res[messageDate] = [];
        }
        res[messageDate].push(message);

        return res;
      }, {});
    },

    loadDetails(chatId) {
      axios
        .get(`http://localhost:3000/api/chats/${chatId}`)
        .then((response) => (this.details = response.data));
    },

    toggleInfo() {
      if (this.view == 'info') {
        return this.view = 'conversation';
      }

      if (this.view == 'conversation') {
        return this.view = 'info';
      }
    }
  },
};
</script>
