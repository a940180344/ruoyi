<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="id" prop="dioId">
        <el-input
          v-model="queryParams.dioId"
          placeholder="请输入id"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="name" prop="dioName">
        <el-input
          v-model="queryParams.dioName"
          placeholder="请输入name"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学生学号" prop="dioStudentId">
        <el-input
          v-model="queryParams.dioStudentId"
          placeholder="请输入学生学号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="工作室id" prop="dioStudioId">
        <el-input
          v-model="queryParams.dioStudioId"
          placeholder="请输入工作室id"
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
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['studio:studioNaxin:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['studio:studioNaxin:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="studioNaxinList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="dioId" />
      <el-table-column label="name" align="center" prop="dioName" />
      <el-table-column label="学生学号" align="center" prop="dioStudentId" />
      <el-table-column label="申请理由" align="center" prop="dioReason" />
      <el-table-column label="工作室id" align="center" prop="dioStudioId" />
      <el-table-column label="审批状态" align="center" prop="dioStarts" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['studio:studioNaxin:edit']"
          >拒绝</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['studio:studioNaxin:remove']"
          >通过</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-position"
            @click="studentDetailDig = true"
            v-hasPermi="['studio:studioNaxin:remove']"
          >详情</el-button>
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

    <!-- 添加或修改纳新对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">

        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <el-dialog
      title="学生申请"
      :visible.sync="studentDetailDig"
      width="40%">
      <el-form ref="form" :model="studentDetail"  label-width="80px">
        <el-col >
          <el-form-item label="名字" >
            <el-input v-model="studentDetail.name"  disabled/>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="学号" >
            <el-input v-model="studentDetail.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="性别" >
            <el-input v-model="studentDetail.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="年纪" >
            <el-input v-model="studentDetail.studentId"   disabled/>
          </el-form-item>
        </el-col>

        <el-col :span="12">
          <el-form-item label="班级" >
            <el-input v-model="studentDetail.studentId"  disabled/>
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
            type="textarea" :rows="3" v-model="studentDetail.reason"  placeholder="请输入学习方向和期望"/>
        </el-form-item>

        <el-form-item label="个人简介" >
          <el-input type="textarea" :rows="3" v-model="studentDetail.reason" placeholder="请输入个人简介" />
        </el-form-item>
        <el-form-item label="上传附件" prop="field102" required>
          <el-upload ref="field102" :file-list="field102fileList" :action="field102Action"
                     :before-upload="field102BeforeUpload">
            <el-button size="small" type="primary" icon="el-icon-upload">点击下载</el-button>
          </el-upload>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button type="danger" @click="student = false" style="float: left">拒 绝</el-button>
    <el-button @click="student = false">取 消</el-button>
    <el-button type="primary" @click="student = false">通 过</el-button>
  </span>
    </el-dialog>
  </div>
</template>

<script>
import { listStudioNaxin, getStudioNaxin, delStudioNaxin, addStudioNaxin, updateStudioNaxin } from "@/api/studio/studioNaxin";

export default {
  name: "StudioNaxin",
  data() {
    return {
      studentDetail:[],
      studentDetailDig:false,
      dataPro:{},
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
      // 纳新表格数据
      studioNaxinList: [
      ],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        dioId: null,
        dioName: null,
        dioStudentId: null,
        dioReason: null,
        dioStudioId: null,
        dioStarts: null,
        studioId:2
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        dioReason: [
          { required: true, message: "申请理由不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询纳新列表 */
    getList() {
      this.loading = true;
      listStudioNaxin(this.queryParams).then(response => {
        this.studioNaxinList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        dioId: null,
        dioName: null,
        dioStudentId: null,
        dioReason: null,
        dioStudioId: null,
        dioStarts: []
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
      this.ids = selection.map(item => item.dioId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加纳新";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const dioId = row.dioId || this.ids
      getStudioNaxin(dioId).then(response => {
        this.form = response.data;
        this.form.dioStarts = this.form.dioStarts.split(",");
        this.open = true;
        this.title = "修改纳新";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.dioStarts = this.form.dioStarts.join(",");
          if (this.form.dioId != null) {
            updateStudioNaxin(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStudioNaxin(this.form).then(response => {
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
      const dioIds = row.dioId || this.ids;
      this.$modal.confirm('是否确认删除纳新编号为"' + dioIds + '"的数据项？').then(function() {
        return delStudioNaxin(dioIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('studio/studioNaxin/export', {
        ...this.queryParams
      }, `studioNaxin_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
