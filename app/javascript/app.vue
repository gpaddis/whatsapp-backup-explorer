<template>
  <div id="app" class="container app">
    <div class="row app-one">
      <div class="col-sm-4 side">
        <div class="side-one">
          <div class="row searchBox">
            <div class="col-sm-12 searchBox-inner">
              <div class="form-group has-feedback">
                <input id="searchText" type="text" class="form-control" name="searchText" placeholder="Search">
                <span class="glyphicon glyphicon-search form-control-feedback"></span>
              </div>
            </div>
          </div>

          <div class="row sideBar">
            <div class="row sideBar-body" v-for="chat in chats" :key="chat._id" @click="current_chat_id = chat._id">
              <div class="col-sm-3 col-xs-3 sideBar-avatar">
                <div class="avatar-icon">
                  <img src="https://bootdey.com/img/Content/avatar/avatar1.png">
                </div>
              </div>
              <div class="col-sm-9 col-xs-9 sideBar-main">
                <div class="row">
                  <div class="col-sm-8 col-xs-8 sideBar-name">
                    <span class="name-meta">{{ chat.subject ? chat.subject : "+" + chat.user }}
                  </span>
                  </div>
                  <div class="col-sm-4 col-xs-4 pull-right sideBar-time">
                    <span class="time-meta pull-right">18:18
                  </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <Chat :chat-id="current_chat_id" />
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
