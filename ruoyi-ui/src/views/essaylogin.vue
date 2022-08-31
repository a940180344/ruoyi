<template>
  <div>
    <h1>{{id}}</h1>
  </div>
</template>

<script>
export default {
name: "essayLogin",
  data(){
    return{
      id:''
    }
  },
  created() {
    this.id = this.$route.query.id
  },
  methods:{

  }

}
</script>

<style scoped>

</style>
