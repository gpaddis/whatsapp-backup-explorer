<template>
  <div id="app" class="container-fluid">
    <div class="row">
      <div class="col col-xl-2 col-md-4">
        <h2>Chats</h2>

        <ul class="list-group">
          <li class="list-group-item" v-for="chat in chats" :key="chat._id" @click="current_chat_id = chat._id">
            <p>
              {{ chat.subject ? chat.subject : "+" + chat.user }}
            </p>
          </li>
        </ul>
      </div>

      <div class="col">
        <Chat :chat-id="current_chat_id" />
      </div>
    </div>
  </div>
</template>

<script>
import Chat from './components/Chat'

export default {
  components: { Chat },

  data() {
    return {
      chats: [],
      current_chat_id: null
    }
  },

  created() {
    this.loadChats();
  },

  methods: {
    loadChats() {
      axios.get('http://localhost:3000/api/chats')
        .then(response => this.chats = response.data)
    }
  }
}
</script>
