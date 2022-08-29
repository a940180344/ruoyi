<template>
  <div class="app-container home">


  </div>
</template>

<script>
import { listEssayFabu, getEssayFabu } from '@/api/essay/essayFabu'
export default {
  name: "Index",
  data() {
    return {


    }
  },
  created() {
  },
  methods: {
    async getList() {
      const dataProlist = await listEssayFabu();
      this.essayList = dataProlist.rows;
      console.log(this.essayList)
    },
    async getEssayContxt(essayId) {
      const dataEssayContxt = await getEssayFabu(essayId);
      this.essayContxt = dataEssayContxt.data.essayContent;
      this.essayContxtTitle = this.essayList[essayId - 1].essayTitle;

    }
  }
};
</script>
<style>
.essay {
  margin-top: 10px;
  flex-wrap: nowrap;
}

.ql-editor {
  float: right;
  margin-top: 30px;
}

.essayTitle {

  text-align: center;
  margin-top: -170px;
  color: brown;
}

.ql-editor p {
  margin-top: 10px;
  font-size: 18px;
}
</style>
