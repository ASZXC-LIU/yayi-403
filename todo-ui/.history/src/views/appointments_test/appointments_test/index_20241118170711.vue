<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
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
          v-hasPermi="['appointments_test:appointments_test:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['appointments_test:appointments_test:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['appointments_test:appointments_test:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['appointments_test:appointments_test:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="appointments_testList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="预约唯一ID" align="center" prop="appointmentId" />
      <el-table-column label="患者ID，关联患者表" align="center" prop="patientId" />
      <el-table-column label="医生ID，关联医生表" align="center" prop="doctorId" />
      <el-table-column label="预约开始时间" align="center" prop="appointmentStartTime" />
      <el-table-column label="预约终止时间" align="center" prop="appointmentEndTime" />
      <el-table-column label="预约时长" align="center" prop="appointmentDuration" />
      <el-table-column label="预约的项目" align="center" prop="appointmentProject" />
      <el-table-column label="预约状态" align="center" prop="appointmentStatus" />
      <el-table-column label="预约创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['appointments_test:appointments_test:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['appointments_test:appointments_test:remove']">删除</el-button>
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

    <!-- 添加或修改预约测试模块对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="appointments_testRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者ID，关联患者表" prop="patientId">
          <el-input v-model="form.patientId" placeholder="请输入患者ID，关联患者表" />
        </el-form-item>
        <el-form-item label="医生ID，关联医生表" prop="doctorId">
          <el-input v-model="form.doctorId" placeholder="请输入医生ID，关联医生表" />
        </el-form-item>
        <el-form-item label="预约开始时间" prop="appointmentStartTime">
          <el-input v-model="form.appointmentStartTime" placeholder="请输入预约开始时间" />
        </el-form-item>
        <el-form-item label="预约终止时间" prop="appointmentEndTime">
          <el-input v-model="form.appointmentEndTime" placeholder="请输入预约终止时间" />
        </el-form-item>
        <el-form-item label="预约时长" prop="appointmentDuration">
          <el-input v-model="form.appointmentDuration" placeholder="请输入预约时长" />
        </el-form-item>
        <el-form-item label="预约的项目" prop="appointmentProject">
          <el-input v-model="form.appointmentProject" placeholder="请输入预约的项目" />
        </el-form-item>
        <el-form-item label="预约创建时间" prop="createdAt">
          <el-date-picker clearable
            v-model="form.createdAt"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择预约创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="预约更新时间" prop="updatedAt">
          <el-date-picker clearable
            v-model="form.updatedAt"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择预约更新时间">
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

<script setup name="Appointments_test">
import { listAppointments_test, getAppointments_test, delAppointments_test, addAppointments_test, updateAppointments_test } from "@/api/appointments_test/appointments_test";

const { proxy } = getCurrentInstance();

const appointments_testList = ref([]);
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
  },
  rules: {
    appointmentProject: [
      { required: true, message: "预约的项目不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询预约测试模块列表 */
function getList() {
  loading.value = true;
  listAppointments_test(queryParams.value).then(response => {
    appointments_testList.value = response.rows;
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
    appointmentId: null,
    patientId: null,
    doctorId: null,
    appointmentStartTime: null,
    appointmentEndTime: null,
    appointmentDuration: null,
    appointmentProject: null,
    appointmentStatus: null,
    createdAt: null,
    updatedAt: null
  };
  proxy.resetForm("appointments_testRef");
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
  ids.value = selection.map(item => item.appointmentId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加预约测试模块";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _appointmentId = row.appointmentId || ids.value
  getAppointments_test(_appointmentId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改预约测试模块";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["appointments_testRef"].validate(valid => {
    if (valid) {
      if (form.value.appointmentId != null) {
        updateAppointments_test(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addAppointments_test(form.value).then(response => {
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
  const _appointmentIds = row.appointmentId || ids.value;
  proxy.$modal.confirm('是否确认删除预约测试模块编号为"' + _appointmentIds + '"的数据项？').then(function() {
    return delAppointments_test(_appointmentIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('appointments_test/appointments_test/export', {
    ...queryParams.value
  }, `appointments_test_${new Date().getTime()}.xlsx`)
}

getList();
</script>
