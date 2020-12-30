<template>
  <div id="app">
    <div class="container mx-auto">
      <div class="py-6 h-screen">
        <div class="flex border border-grey rounded shadow-lg h-full">
          <!-- Left -->
          <div class="w-1/3 border flex flex-col min-w-min">
            <!-- Header -->
            <div
              class="py-2 px-3 bg-grey-lighter flex flex-row justify-between items-center"
            >
              <div>
                <img
                  class="w-10 h-10 rounded-full"
                  src="/images/whatsapp-user.png"
                />
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
                      fill="#727A7E"
                      d="M12 20.664a9.163 9.163 0 0 1-6.521-2.702.977.977 0 0 1 1.381-1.381 7.269 7.269 0 0 0 10.024.244.977.977 0 0 1 1.313 1.445A9.192 9.192 0 0 1 12 20.664zm7.965-6.112a.977.977 0 0 1-.944-1.229 7.26 7.26 0 0 0-4.8-8.804.977.977 0 0 1 .594-1.86 9.212 9.212 0 0 1 6.092 11.169.976.976 0 0 1-.942.724zm-16.025-.39a.977.977 0 0 1-.953-.769 9.21 9.21 0 0 1 6.626-10.86.975.975 0 1 1 .52 1.882l-.015.004a7.259 7.259 0 0 0-5.223 8.558.978.978 0 0 1-.955 1.185z"
                    ></path>
                  </svg>
                </div>
                <div class="ml-4">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    width="24"
                    height="24"
                  >
                    <path
                      opacity=".55"
                      fill="#263238"
                      d="M19.005 3.175H4.674C3.642 3.175 3 3.789 3 4.821V21.02l3.544-3.514h12.461c1.033 0 2.064-1.06 2.064-2.093V4.821c-.001-1.032-1.032-1.646-2.064-1.646zm-4.989 9.869H7.041V11.1h6.975v1.944zm3-4H7.041V7.1h9.975v1.944z"
                    ></path>
                  </svg>
                </div>
                <div class="ml-4">
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

            <!-- Search -->
            <div class="py-2 px-2">
              <input
                type="text"
                class="w-full px-2 py-2 text-sm"
                placeholder="Search"
              />
            </div>

            <!-- Contacts -->
            <div class="flex-1 overflow-auto">
              <div
                class="bg-gray-50 px-3 flex items-center hover:bg-gray-200 cursor-pointer"
                v-for="chat in chats"
                :key="chat._id"
                @click="current_chat_id = chat._id"
              >
                <div>
                  <img
                    class="h-12 w-12 rounded-full"
                    src="/images/whatsapp-user.png"
                  />
                </div>
                <div class="ml-4 flex-1 border-b border-grey-lighter py-4">
                  <div class="flex items-bottom justify-between">
                    <p class="text-grey-darkest">{{ chat.subject ? chat.subject : chat.group_owner.user }}</p>
                    <p class="text-xs text-grey-darkest">{{ new Date(chat.sort_timestamp).toLocaleDateString("de-de") }}</p>
                  </div>
                </div>
              </div>

            </div>
          </div>

          <!-- Right -->
          <!-- DEBUG -->
          <!-- <Chat :chat-id="286" /> -->
          <Chat :chat-id="current_chat_id" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Chat from "./components/Chat";

export default {
  components: { Chat },

  data() {
    return {
      chats: [],
      current_chat_id: null,
    };
  },

  created() {
    this.loadChats();
  },

  methods: {
    loadChats() {
      axios
        .get("http://localhost:3000/api/chats")
        .then((response) => (this.chats = response.data));
    },
  },
};
</script>
