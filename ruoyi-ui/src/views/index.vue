<template>
  <div class="app-container home">
    <v-carousel cycle=true interval = "3000">
      <v-carousel-item
        v-for="(item,i) in items"
        :key="i"
        :src="item.src"
        reverse-transition="fade-transition"
        transition="fade-transition"

      ></v-carousel-item>
    </v-carousel>
    <v-card
      class="mx-auto"
      max-width="300"
      tile
    >
      <v-list rounded cycle = true>
        <v-subheader>REPORTS</v-subheader>
        <v-list-item-group v-model="item_t" color="primary">
          <v-list-item
            v-for="(item) in essayList"
            :key="item.essayId"
          >
            <v-list-item-content @click="getEssayContxt(item.essayId)">
              <v-list-item-title v-text="item.essayTitle" ></v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-card>
    <p v-html="essayContxt"></p>
  </div>
</template>

<script>
import {listEssayFabu} from '@/api/essay/essayFabu'
export default {
  name: "Index",
  data () {
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
      essayList:[],
      essayContxt:'<p>\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg" width="500"></p><p class="ql-align-center">\t\t全体学员作开班宣誓</p><p>\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\t8月2日，\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg" width="500"></p><p>\t8月3日，\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg" width="500"></p><p>\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg" width="500"></p><p>\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg" width="500"></p><p>\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/9/62/7B/C82FFA6A7127CD8933E8497E761_23E70E92_148A2.jpg" width="500"></p><p>\t学员纷纷表示，“SWOT工具似炎炎夏日中一场‘及时雨’，本次实操培训十分受用，对实际工作很有启发。”</p><p>\t研修班还围绕“有效沟通”“团结协作”“携手共进”三个主题展开团建活动，精心设计的游戏环节不仅有利于缓解压力、放松心情，更进一步拉近了距离，强化了团队合作意识。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/0/29/D3/CE43D1DAC63F74F5244DAE485C5_ADA8FB69_16B3D.jpg" width="500"></p><p>\t结业仪式上，各组组长汇报“团队目标”以及基于团队目标的“个人行动承诺”，其余学员逐一汇报“个人行动承诺”。</p><p>\t张红霞副校长对学员们的研修成果表示肯定。同时，她对各学院目标制定及学员成长提出了建议与希望：一是各学院的目标制定需基于对行业和市场的充分调研，结合当前学院现状及教育发展大势，围绕“一号文件”，以终为始；二是区分目标与手段，业务工作合理叠加，真正将应用型人才培养落实；三是希望学员能将研修学习成果赋能工作实践，带领团队共创“三赢”。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/7/F2/79/4CD98D07AB01F2CDAD7978E91EC_D597A1D0_14CAC.jpg" width="500"></p><p>\t研修班闭幕式上，张红霞副校长、马彦彬院长共同为院长研修班学员颁发学时认证证书以兹鼓励。</p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/C/AB/D3/4EAFC51EBBAFB38C9719979ED12_EBC89EB2_111BC.jpg" width="500"></p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/9/42/F0/C2F18922D290986048B50B5DDE9_8A0B4E2C_10A1C.jpg" width="500"></p><p class="ql-align-center">\t<img src="http://news.ygu.edu.cn/__local/3/58/15/40B8956E77AC03F6E9E00ECDAAF_E7CBBC1E_113BF.jpg" width="500"></p><p>\t学员们信心满满，表示会将此次研修成果应用于学院业务开展及团队管理中，躬身践行，榜样传承。（教师发展学院供稿）</p>'
    }
  },
  created() {
    this.getList()
  },
  methods:{
    async getList(){
      const dataProlist = await listEssayFabu();
      this.essayList = dataProlist.rows;
    },
    getEssayContxt(essayId){
      alert(essayId)
    }
  }
};
</script>

