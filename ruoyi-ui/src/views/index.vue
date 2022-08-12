<template>
  <div class="app-container home">
    <v-carousel interval="6000">
      <v-carousel-item v-for="(item, i) in items" :key="i" :src="item.src" reverse-transition="fade-transition"
        transition="fade-transition"></v-carousel-item>
    </v-carousel>
    <div class="essay" style="flex-wrap: nowrap;">
      <div class="essayCard" style="width: 19%;">
        <v-card class="mx-auto" max-width="300" tile>
          <v-list rounded cycle=true>
            <v-subheader>重要事情通知</v-subheader>
            <v-list-item-group v-model="item_t" color="primary">
              <v-list-item v-for="(item) in essayList" :key="item.essayId">
                <v-list-item-content @click="getEssayContxt(item.essayId)">
                  <v-list-item-title v-text="item.essayTitle"></v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </v-list-item-group>
          </v-list>
        </v-card>
      </div>
      <div class="essayCard" style="width: 19%;">

      </div>
      <div class="ql-container ql-snow">
        <div class="essayTitle">
          <h1>{{ essayContxtTitle }}</h1>
          <p>作者：xxx</p>
          <p>日期:2001.01.21</p>
        </div>
        <div class="ql-editor" v-html="essayContxt" style="width: 80%;"></div>
      </div>
      <v-card class="mx-auto" max-width="300" tile style="margin-top: 200px;">
        <v-list disabled>
          <v-subheader>工作室宣传模块</v-subheader>
          <v-list-item-group v-model="itemgzshi" color="primary">
            <v-list-item v-for="(item, i) in itemgzuoshi" :key="i">
              <v-list-item-icon>
                <v-icon v-text="item.icon"></v-icon>
              </v-list-item-icon>
              <v-list-item-content>
                <v-list-item-title v-text="item.text"></v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </v-list-item-group>
        </v-list>
      </v-card>
    </div>

  </div>
</template>

<script>
import { listEssayFabu, getEssayFabu } from '@/api/essay/essayFabu'
export default {
  name: "Index",
  data() {
    return {
      items: [
        {
          src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg',
        },
        {
          src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg',
        },
        {
          src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg',
        },
        {
          src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg',
        },
      ],
      item: 1,
      item_t: 0,
      essayList: [],
      essayContxt: '',
      dataTitleList: '',
      itemgzuoshi: [
        { text: '情暖工作室', icon: 'mdi-clock' },
        { text: '若依工作室', icon: 'mdi-account' },
        { text: '土林工作室', icon: 'mdi-flag' },
      ],
      itemgzshi: 1,

    }
  },
  created() {
    this.getList()
  },
  methods: {
    async getList() {
      const dataProlist = await listEssayFabu();
      this.essayList = dataProlist.rows;
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
