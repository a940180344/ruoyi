<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="部门名称" prop="deptName">
        <el-input
          v-model="queryParams.deptName"
          placeholder="请输入部门名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="老师" prop="leader" w>
        <el-input
          v-model="queryParams.leader"
          placeholder="请输入老师负责人"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['dept:dept:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="deptList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="部门id" align="center" prop="deptId" />
      <el-table-column label="部门名称" align="center" prop="deptName" />
      <el-table-column label="显示顺序" align="center" prop="orderNum" />
      <el-table-column label="老师负责人" align="center" prop="leader" />
      <el-table-column label="联系电话" align="center" prop="phone" />
      <el-table-column label="邮箱" align="center" prop="email" />
      <el-table-column label="部门状态" align="center" prop="status" />
      <el-table-column label="工作室简介" align="center" prop="introduction" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="studentFun"
          >申请</el-button>

        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改部门对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="部门名称" prop="deptName">
          <el-input v-model="form.deptName" placeholder="请输入部门名称" />
        </el-form-item>
        <el-form-item label="显示顺序" prop="orderNum">
          <el-input v-model="form.orderNum" placeholder="请输入显示顺序" />
        </el-form-item>
        <el-form-item label="老师负责人" prop="leader">
          <el-input v-model="form.leader" placeholder="请输入老师负责人" />
        </el-form-item>
        <el-form-item label="联系电话" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入联系电话" />
        </el-form-item>
        <el-form-item label="邮箱" prop="email">
          <el-input v-model="form.email" placeholder="请输入邮箱" />
        </el-form-item>
        <el-form-item label="工作室公告" prop="announcement">
          <el-input v-model="form.announcement" placeholder="请输入工作室公告" />
        </el-form-item>
        <el-form-item label="工作室简介" prop="introduction">
          <el-input v-model="form.introduction" placeholder="请输入工作室简介" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 添加或修改用户配置对话框 -->
    <el-dialog
      title="学生申请"
      :visible.sync="student"
      width="40%">
      <el-form ref="form" :model="studentForm"  label-width="80px">
        <el-col >
          <el-form-item label="名字" >
            <el-input v-model="studentForm.name"  disabled/>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="学号" >
            <el-input v-model="studentForm.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="性别" >
            <el-input v-model="studentForm.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="年纪" >
            <el-input v-model="studentForm.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="班级" >
            <el-input v-model="studentForm.studentId"  disabled/>
          </el-form-item>
        </el-col>

        <el-col >
          <el-form-item label="学习情况" >
            <el-input
              type="textarea" :rows="3"  placeholder="请输入学习情况"/>
          </el-form-item>
        </el-col>
          <el-form-item label="特长说明" >
            <el-input
              type="textarea" :rows="3"  placeholder="请输入特长说明""/>
          </el-form-item>
          <el-form-item label="学习方向和期望" >
            <el-input
              type="textarea" :rows="3" v-model="studentForm.reason"  placeholder="请输入学习方向和期望"/>
          </el-form-item>

        <el-form-item label="个人简介" >
          <el-input type="textarea" :rows="3" v-model="studentForm.reason" placeholder="请输入个人简介" />
        </el-form-item>
        <el-form-item label="上传附件" prop="field102" required>
          <el-upload ref="field102" :file-list="field102fileList" :action="field102Action"
                     :before-upload="field102BeforeUpload">
            <el-button size="small" type="primary" icon="el-icon-upload">点击上传</el-button>
          </el-upload>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
    <el-button @click="student = false">取 消</el-button>
    <el-button type="primary" @click="student = false">确 定</el-button>
  </span>
    </el-dialog>
  </div>
</template>

<script>
import { listDept, getDept, delDept, addDept, updateDept } from "@/api/dept/dept";
import {getUserProfile} from "@/api/system/user"
export default {
  name: "Dept",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 部门表格数据
      deptList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      user:'',
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        deptName: null,
        orderNum: null,
        leader: null,
        phone: null,
        email: null,
        status: null,
        announcement: null,
        project: null,
        introduction: null,

      },
      studentForm:{
        name:'',
        studentId:'',
        reason:'',
        studioId:''
      },
      student:false,
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询部门列表 */
    async getList() {
      this.loading = true;
      listDept(this.queryParams).then(response => {
        this.deptList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
      const dateUser = await getUserProfile();
      this.user = dateUser.data;
      console.log(this.user.userName)
      this.studentForm.name = this.user.nickName
      this.studentForm.studentId = this.user.userName
      console.log(this.user)
    },
    studentFun(){
      this.student = true;
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        deptId: null,
        parentId: null,
        ancestors: null,
        deptName: null,
        orderNum: null,
        leader: null,
        phone: null,
        email: null,
        status: "0",
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        announcement: null,
        project: null,
        introduction: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.deptId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加部门";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const deptId = row.deptId || this.ids
      getDept(deptId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改部门";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.deptId != null) {
            updateDept(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addDept(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const deptIds = row.deptId || this.ids;
      this.$modal.confirm('是否确认删除部门编号为"' + deptIds + '"的数据项？').then(function() {
        return delDept(deptIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('dept/dept/export', {
        ...this.queryParams
      }, `dept_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
