<template>
  <div class="app-container">
    <el-col :span="6" :xs="24">
      <user-card :user="user" />
    </el-col>
    <el-col :span="16" :xs="24" style="float: right;">
      <el-card>
        <el-tabs v-model="activeTab">
          <el-tab-pane label="以往申请次数" name="timeline">
            <timeline />
          </el-tab-pane>
          <el-tab-pane label="第一次申请" name="activity一">
            <activity />
          </el-tab-pane>
          <el-tab-pane label="第二次申请" name="activity二">
            <activity />
          </el-tab-pane>
          <el-tab-pane label="本次申请" name="activity本">
            <activity />
          </el-tab-pane>
        </el-tabs>

      </el-card>
    </el-col>
  </div>
</template>

<script>
import UserCard from './components/UserCard'
import Timeline from './components/Timeline'
import { mapGetters } from 'vuex'
export default {
  name: "studentdetail",
  components:{UserCard,Timeline},
  data() {
    return{
      activeTab: 'timeline',
      user:{
        avatar:"https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif",
        email:"admin@test.com",
        name:"Super Admin",
        role:"admin",
      }
    }
  },
  methods:{

  },
  created() {
    console.log(this.studentID,this.deptID,this.deptName)
  },
  computed: {
    ...mapGetters([
      'name',
      'avatar',
      'roles',
      'studentID',//学号
      'deptID',
      'deptName'
    ])
  },
}
</script>
