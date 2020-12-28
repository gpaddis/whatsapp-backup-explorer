<template>
  <div id="app" class="container-fluid">
    <div class="row">
      <div class="col col-xl-2 col-md-4">
        <h2>Chats</h2>

        <ul class="list-group">
          <li class="list-group-item" v-for="chat in chats" :key="chat._id">
            <p>
              {{ chat.subject ? chat.subject : chat.user }}
            </p>
          </li>
        </ul>
      </div>

      <div class="col">
        <div class="row">
          <div class="col">
            <nav class="navbar navbar-light bg-light">
              <p>Chat information</p>
            </nav>
          </div>
        </div>

        <div class="row">
          <div class="col">
            Right bar (Messages)
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      chats: [],
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
