<template>
  <div class="flex justify-center mb-2">
    <div class="rounded py-2 px-4 shadow-md" style="background-color: #ddecf2">
      <p class="text-sm">
        {{ messageBody }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  // You either pass just the body or the whole message object to a service message.
  props: ["message", "simpleBody"],

  computed: {
    messageBody() {
      if (this.simpleBody != undefined) {
        return this.simpleBody;
      }

      let body = "";
      switch (this.message.service_action) {
        case "group_name_changed":
          body = `${this.message.author.user} renamed the group: "${this.message.data}"`;
          break;
        case "added_to_group":
          body = `${this.message.author.user} added +${this.message.target_phone_number} to the group.`;
          break;
        case "kicked_from_group":
          body = `${this.message.author.user} removed +${this.message.target_phone_number} from the group.`;
          break;
        case "added_admin":
          body = `${this.message.author.user} made +${this.message.target_phone_number} a group admin.`;
          break;
        case "changed_group_picture":
          body = `${this.message.author.user} changed the group picture.`;
          break;
      }
      return body;
    },
  },
};
</script>
