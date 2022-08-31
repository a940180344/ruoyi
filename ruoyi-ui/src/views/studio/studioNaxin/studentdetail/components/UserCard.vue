<template>
  <el-card style="margin-bottom:20px;">
    <div slot="header" class="clearfix">
      <span>About me</span>
    </div>

    <div class="user-profile">
      <div class="box-center">
        <img style="border-radius: 30px; width:60px;height:60px;" src="https://p26-passport.byteacctimg.com/img/user-avatar/2888e76b28ca6113c08f49230be7d3c6~300x300.image" alt="">
      </div>
      <div class="box-center">
        <div class="user-name text-center">{{ user.name }}</div>
        <div class="user-role text-center text-muted">{{ user.role | uppercaseFirst }}</div>
      </div>
    </div>

    <div class="user-bio">
      <div class="user-education user-bio-section">
        <div class="user-bio-section-header"><svg-icon icon-class="education" /><span>个人信息栏</span></div>
        <div class="user-bio-section-body">
          <div class="text-muted">
            <el-col :span="12"><div class="grid-content bg-purple"><strong>学号：{{this.studentID}}</strong></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple"><strong>班级：{{this.studentID}}</strong></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple"><strong>年级：{{this.studentID}}</strong></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple"><strong>e-mail：{{this.studentID}}</strong></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple"><strong>手机：{{this.studentID}}</strong></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple"><strong>手机：{{this.studentID}}</strong></div></el-col>
          </div>
        </div>
      </div>
      <div class="user-education user-bio-section">
        <div class="user-bio-section-header"><svg-icon icon-class="education" /><span>个人简介</span></div>
        <div class="user-bio-section-body">
          <div class="text-muted">
            适应力强、反应迅速、求知欲强、兴趣广泛、掌握学习能力强、思维敏锐、主动活泼且健谈、聪慧且多才多艺、具有写作和语言方面的天赋、逻辑推理、思辨能力强
          </div>
        </div>
      </div>
      <div class="user-skills user-bio-section">
        <div class="user-bio-section-header"><svg-icon icon-class="skill" /><span>技能掌握</span></div>
        <div class="user-bio-section-body">
          <div class="progress-item">
            <span>Vue</span>
            <el-progress :percentage="70" />
          </div>
          <div class="progress-item">
            <span>JavaScript</span>
            <el-progress :percentage="18" />
          </div>
          <div class="progress-item">
            <span>Css</span>
            <el-progress :percentage="12" />
          </div>
          <div class="progress-item">
            <span>ESLint</span>
            <el-progress :percentage="100" status="success" />
          </div>
        </div>
      </div>
    </div>
  </el-card>
</template>

<script>
import { mapGetters } from 'vuex'
export default {
  props: {
    user: {
      type: Object,
      default: () => {
        return {
          name: '',
          email: '',
          avatar: '',
          role: ''
        }
      }
    },

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

<style lang="scss" scoped>
.box-center {
  margin: 0 auto;
  display: table;
}

.text-muted {
  color: #777;
}

.user-profile {
  .user-name {
    font-weight: bold;
  }

  .box-center {
    padding-top: 10px;
  }

  .user-role {
    padding-top: 10px;
    font-weight: 400;
    font-size: 14px;
  }

  .box-social {
    padding-top: 30px;

    .el-table {
      border-top: 1px solid #dfe6ec;
    }
  }

  .user-follow {
    padding-top: 20px;
  }
}

.user-bio {
  margin-top: 20px;
  color: #606266;

  span {
    padding-left: 4px;
  }

  .user-bio-section {
    font-size: 14px;
    padding: 35px 0;

    .user-bio-section-header {
      border-bottom: 1px solid #dfe6ec;
      padding-bottom: 10px;
      margin-bottom: 10px;
      font-weight: bold;
    }
  }
}
</style>
