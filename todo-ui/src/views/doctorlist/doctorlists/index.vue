<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="医生姓名" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入医生姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="科室" prop="department">
        <el-input
          v-model="queryParams.department"
          placeholder="请输入科室"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['doctorlist:doctorlists:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['doctorlist:doctorlists:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['doctorlist:doctorlists:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['doctorlist:doctorlists:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="doctorlistsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="医生唯一ID" align="center" prop="doctorId" />
      <el-table-column label="医生姓名" align="center" prop="name" />
      <el-table-column label="科室" align="center" prop="department" />
      <el-table-column label="医生联系电话" align="center" prop="phone" />
      <el-table-column label="职位" align="center" prop="position" />
      <el-table-column label="创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['doctorlist:doctorlists:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['doctorlist:doctorlists:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改医生信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="doctorlistsRef" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="医生姓名" prop="name">
          <el-input v-model="form.name" placeholder="请输入医生姓名" />
        </el-form-item>
        <el-form-item label="科室" prop="department">
          <el-input v-model="form.department" placeholder="请输入科室" />
        </el-form-item>
        <el-form-item label="医生联系电话" prop="phone">
          <el-input v-model="form.phone" placeholder="请输入医生联系电话" />
        </el-form-item>
        <el-form-item label="职位" prop="position">
          <el-input v-model="form.position" placeholder="请输入职位" />
        </el-form-item>
        <el-form-item label="创建时间" prop="createdAt">
          <el-date-picker clearable
            v-model="form.createdAt"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Doctorlists">
import { listDoctorlists, getDoctorlists, delDoctorlists, addDoctorlists, updateDoctorlists } from "@/api/doctorlist/doctorlists";

const { proxy } = getCurrentInstance();

const doctorlistsList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    name: null,
    department: null,
  },
  rules: {
    name: [
      { required: true, message: "医生姓名不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询医生信息列表 */
function getList() {
  loading.value = true;
  listDoctorlists(queryParams.value).then(response => {
    doctorlistsList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

// 取消按钮
function cancel() {
  open.value = false;
  reset();
}

// 表单重置
function reset() {
  form.value = {
    doctorId: null,
    name: null,
    department: null,
    phone: null,
    position: null,
    createdAt: null,
    updatedAt: null
  };
  proxy.resetForm("doctorlistsRef");
}

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  handleQuery();
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.doctorId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加医生信息";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _doctorId = row.doctorId || ids.value
  getDoctorlists(_doctorId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改医生信息";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["doctorlistsRef"].validate(valid => {
    if (valid) {
      if (form.value.doctorId != null) {
        updateDoctorlists(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addDoctorlists(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _doctorIds = row.doctorId || ids.value;
  proxy.$modal.confirm('是否确认删除医生信息编号为"' + _doctorIds + '"的数据项？').then(function() {
    return delDoctorlists(_doctorIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('doctorlist/doctorlists/export', {
    ...queryParams.value
  }, `doctorlists_${new Date().getTime()}.xlsx`)
}

getList();
</script>
