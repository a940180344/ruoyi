<template>
  <div class="app-container">

    <el-form ref="projectForm" :model="projectForm" label-width="120px">
      <el-form-item label="项目名">
        <el-input v-model="projectForm.name"/>
      </el-form-item>
      <el-form-item label="获奖比赛类型">
        <el-select v-model="projectForm.raceType" placeholder="请选择你的比赛类型" clearable filterable multiple
                   style="width: 480px">
          <el-option v-for="item in raceType" :label="item.label" :value="item.value" :key="item.RtId"/>
        </el-select>
      </el-form-item>
      <el-form-item label="项目组长">
        <el-select v-model="projectForm.projectTeamLeader" clearable filterable style="width: 240px">
          <el-option v-for="item in projectTeamLeader" :label="item.label + item.value" :value="item.value"
                     :key="item.projectTeamId"/>
        </el-select>
      </el-form-item>
      <el-form-item label="项目成员">
        <el-select v-model="projectForm.projectMembers" clearable filterable multiple style="width: 480px">
          <el-option v-for="item in projectMembers" :label="item.label + item.value" :value="item.value"
                     :key="item.projectMembersId"/>
        </el-select>
      </el-form-item>
      <el-form-item label="项目创建时间">
        <el-col :span="11">
          <el-date-picker v-model="projectForm.date1" type="date" placeholder="Pick a date" style="width: 100%;"/>
        </el-col>
      </el-form-item>
      <el-form-item label="项目结束时间">
        <el-col :span="11">
          <el-date-picker v-model="projectForm.date2" type="date" placeholder="Pick a date" style="width: 100%;"/>
        </el-col>
      </el-form-item>
      <el-form-item label="项目简介">
        <el-input v-model="projectForm.projectIntroduction" type="textarea"/>
      </el-form-item>
      <!-- <el-form-item label="附件" prop="introduction">
        <el-upload ref="upload" :auto-upload="false" :data="form.ruleForm" :on-success="handleAvatarSuccess" :limit="1"
          :before-upload="beforeAvatarUpload">
          <el-button size="small" type="primary">点击上传</el-button>
        </el-upload>
      </el-form-item>
      <el-form-item prop="image" label="获奖图片：">
        <el-upload class="upload-demo" list-type="picture-card" :limit='5' :auto-upload="false"
          :on-exceed='uploadOverrun' :on-preview="handleContImgPreview" :on-remove='handleRmove'
          :http-request='submitUpload' :file-list="fileList" ref="upload">
          <i class="el-icon-plus"></i>
        </el-upload>
        <el-dialog :visible.sync="dialogVisible" :append-to-body="true" :close-on-click-modal="false">
          <img width="100%" :src="dialogImageUrl" alt="">
        </el-dialog>
      </el-form-item>
      <el-form-item> -->
      <el-button type="primary" @click="onSubmit">Create</el-button>
      <el-button @click="onCancel">Cancel</el-button>
      </el-form-item>
    </el-form>
    <span>注：获奖图片文件命名规范：组长+学号+项目名</span>
  </div>
</template>

<script>
import {lsubmitProject} from "@/api/studio/stdio_naxin"

export default {
  data() {
    return {
      projectForm: {
        name: '情暖工程系统',
        raceType: [],
        date1: '',
        date2: '',
        delivery: false,
        projectIntroduction: '',
        projectTeamLeader: '',
        projectMembers: [],
        ruleForm: ''
      }, addForm: {
        image: ''
      },
      rules: {
        image: [
          {required: true, message: '请上传图片', trigger: 'blur'}
        ]
      },
      raceType: [{
        value: 'a',
        RtId: 1,
        label: '蓝桥杯'
      }, {
        value: 'b',
        RtId: 2,
        label: '大创'
      }, {
        value: 'c',
        RtId: 3,
        label: '互联网+'
      }],
      projectTeamLeader: [
        {
          value: '1927230301',
          projectTeamId: 1,
          label: '王一'
        }, {
          value: '1927230302',
          projectTeamId: 2,
          label: '王二'
        }, {
          value: '1927230303',
          projectTeamId: 3,
          label: '王三'
        }
      ],
      projectMembers: [
        {
          value: '192723123',
          projectMembersId: 1,
          label: '张一'
        }, {
          value: '192723213',
          projectMembersId: 2,
          label: '张二'
        }, {
          value: '1927220011',
          projectMembersId: 3,
          label: '张四三'
        }
      ]
    }
  },
  methods: {
    onSubmit() {
      this.$message('submit!')
      // 如果之前在表单中没有加属性：ref，这里到页面执行时会报submit没有定义的错
      this.$refs.projectForm.validate(async valid => {
        if (valid) {
          try {
            const res = await lsubmitProject(this.projectForm)
            if (res.code === 200) {
              this.msgSuccess(
                '提交项目成功'
              )
            }
          } catch (e) {
            this.msgSuccess(
              '提交项目失败'
            )
          }
        }
      });
    },
    onCancel() {
      this.$message({
        message: 'cancel!',
        type: 'warning'
      })
    },


    //调用的是表单中的:before-upload="beforeAvatarUpload"
    beforeAvatarUpload(file) {
      //上传文件的格式
      const idMp3 = file.type == 'audio/mpeg';
      //上传文件的大小
      const isLt10M = (file.size / 1024 / 1024) < 10;
      if (!idMp3) {
        this.$message.error("上传的图片只能是mp3格式");
        return false;
      }
      if (!isLt10M) {
        this.$message.error("上传的图片大小不能超过10MB");
        return false;
      }
      return true;
    },
    //调用的是表单中的::on-success="handleAvatarSuccess"
    handleAvatarSuccess(resp) {
      if (resp.code == 1) {
        this.$message({
          message: '上传成功',
          type: 'success'
        })
        this.resetForm('ruleForm');
        this.$refs.upload.clearFiles();
      } else {
        this.$message({
          message: '上传失败',
          type: 'error'
        })
      }
    },

  }
}
</script>

<style scoped>
.line {
  text-align: center;
}
</style>

