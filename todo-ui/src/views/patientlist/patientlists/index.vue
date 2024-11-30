<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="80px">
      <el-form-item label="患者姓名" prop="name">
        <el-input v-model="queryParams.name" placeholder="请输入患者姓名" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item class="serchRecordNumber" label="患者病历号" prop="medicalRecordNumber" label-width="90px">
        <el-input v-model="queryParams.medicalRecordNumber" placeholder="请输入患者病历号" clearable
          @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="患者联系电话" prop="phone" label-width="96px">
        <el-input v-model="queryParams.phone" placeholder="请输入患者联系电话" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd"
          v-hasPermi="['patientlist:patientlists:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['patientlist:patientlists:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['patientlist:patientlists:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['patientlist:patientlists:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="patientlistsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="患者ID" align="center" prop="patientId" />
      <el-table-column label="患者姓名" align="center" prop="patientName" />
      <el-table-column label="查看就诊记录" align="center" width="130">
        <template #default="scope">
          <el-button type="primary" @click="handleView_records(scope.row)">
            查看就诊记录</el-button>
        </template>
      </el-table-column>
      <el-table-column label="患者年龄" align="center" prop="patientOld" />

      <el-table-column label="患者生日" align="center" prop="patientBirthday" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.birthday, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="患者性别" align="center" prop="patientGender" />
      <el-table-column label="患者过敏源" align="center" prop="patientAllergens" />

      <el-table-column label="患者联系电话" align="center" prop="patientPhone" width="150" />
      <el-table-column label="患者地址" align="center" prop="patientAddress" width="200" />
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
      <el-table-column label="备注" align="center" prop="patientRemarks" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="150">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['patientlist:patientlists:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['patientlist:patientlists:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum" v-model:limit="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改患者信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="patientlistsRef" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="患者年龄" prop="patientOld">
          <el-input v-model="form.patientOld" placeholder="请输入患者性别" />
        </el-form-item>
        <el-form-item label="患者生日" prop="patientBirthday">
          <el-date-picker clearable v-model="form.patientBirthday" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择患者生日">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="患者性别" prop="patientGender">
          <el-input v-model="form.patientGender" placeholder="请输入患者性别" />
        </el-form-item>
        <el-form-item label="过敏源" prop="patientAllergens">
          <el-input v-model="form.patientAllergens" placeholder="请输入患者过敏源" />
        </el-form-item>
        <el-form-item label="患者联系电话" prop="patientPhone">
          <el-input v-model="form.patientPhone" placeholder="请输入患者联系电话" />
        </el-form-item>
        <el-form-item label="患者地址" prop="patientAddress">
          <el-input v-model="form.patientAddress" placeholder="请输入患者地址" />
        </el-form-item>
        <el-form-item label="创建时间" prop="createdAt">
          <el-date-picker clearable v-model="form.createdAt" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="备注" prop="patientRemarks">
          <el-input v-model="form.patientRemarks" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>



    <!-- 查看个人就诊记录 -->
    <!-- <el-dialog :title="title" v-model="open_records" width="90%">
      <el-table v-loading="loading" :data="recordsList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55" align="center" />
        <el-table-column label="就诊记录ID" align="center" prop="medicalRecordsId" />
        <el-table-column label="患者ID" align="center" prop="patientId" />
        <el-table-column label="患者姓名" align="center" prop="patientName" />
        <el-table-column label="医生ID" align="center" prop="doctorId" />
        <el-table-column label="医生姓名" align="center" prop="doctorName" />
        <el-table-column label="主诉" align="center" prop="maincase" />
        <el-table-column label="治疗方式" align="center" prop="treatmentType" />
        <el-table-column label="治疗结果" align="center" prop="clinicalResults" />
        <el-table-column label="就诊状态" align="center" prop="medicalRecordsStatue" />
        <el-table-column label="记录创建时间" align="center" prop="createdTime" width="180">
          <template #default="scope">
            <span>{{ parseTime(scope.row.createdTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="记录更新时间" align="center" prop="updatedTime" width="180">
          <template #default="scope">
            <span>{{ parseTime(scope.row.updatedTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
          <template #default="scope">
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
              v-hasPermi="['record:records:edit']">修改</el-button>
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
              v-hasPermi="['record:records:remove']">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_records">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog> -->



    <el-dialog :title="title" v-model="open_records" width="90%">
      <el-table v-loading="loading" :data="recordsList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55" align="center" />
        <el-table-column label="就诊记录ID" align="center" prop="medicalRecordsId" />
        <el-table-column label="患者ID" align="center" prop="patientId" />
        <el-table-column label="患者姓名" align="center" prop="patientName" />
        <el-table-column label="医生ID" align="center" prop="doctorId" />
        <el-table-column label="医生姓名" align="center" prop="doctorName" />
        <el-table-column label="主诉" align="center" prop="maincase" />
        <el-table-column label="治疗方式" align="center" prop="treatmentType" />
        <el-table-column label="治疗结果" align="center" prop="clinicalResults" />
        <el-table-column label="就诊状态" align="center" prop="medicalRecordsStatue" />
        <el-table-column label="记录创建时间" align="center" prop="createdTime" width="180">
          <template #default="scope">
            <span>{{ parseTime(scope.row.createdTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="记录更新时间" align="center" prop="updatedTime" width="180">
          <template #default="scope">
            <span>{{ parseTime(scope.row.updatedTime, '{y}-{m}-{d}') }}</span>
          </template>
        </el-table-column>
        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
          <template #default="scope">
            <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
              v-hasPermi="['record:records:edit']">修改</el-button>
            <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
              v-hasPermi="['record:records:remove']">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_records">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

  </div>
</template>

<script setup name="Patientlists">
import { listPatientlists, getPatientlists, delPatientlists, addPatientlists, updatePatientlists } from "@/api/patientlist/patientlists";

const { proxy } = getCurrentInstance();

const patientlistsList = ref([]);
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
    patientName: null,
    patientPhone: null,
  },
  rules: {
    patientName: [
      { required: true, message: "患者姓名不能为空", trigger: "blur" }
    ],

    patientPhone: [
      { required: true, message: "患者性别不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询患者信息列表 */
function getList() {
  loading.value = true;
  listPatientlists(queryParams.value).then(response => {
    console.log(response)
    patientlistsList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

// 取消按钮
function cancel() {
  open.value = false;

  open_records.value = false;
  reset_records()
  reset();
}

// 表单重置
function reset() {
  form.value = {
    patientId: null,
    patientName: null,
    patientBirthday: null,
    patientGender: null,
    patientPhone: null,
    patientAddress: null,
    createdAt: null,
    updatedAt: null,
    patientRemarks: null,
    patientAllergens: null,
    patientOld: null,
  };
  proxy.resetForm("patientlistsRef");
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
  ids.value = selection.map(item => item.patientId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加患者信息";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _patientId = row.patientId || ids.value
  getPatientlists(_patientId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改患者信息";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["patientlistsRef"].validate(valid => {
    if (valid) {
      if (form.value.patientId != null) {
        updatePatientlists(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addPatientlists(form.value).then(response => {
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
  const _patientIds = row.patientId || ids.value;
  proxy.$modal.confirm('是否确认删除患者信息编号为"' + _patientIds + '"的数据项？').then(function () {
    return delPatientlists(_patientIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => { });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('patientlist/patientlists/export', {
    ...queryParams.value
  }, `patientlists_${new Date().getTime()}.xlsx`)
}






//以下为查看患者的就诊记录



const records_data = reactive({
  records_form: {},
  records_queryParams: {
    pageNum: 1,
    pageSize: 10,
    patientId: null,
    patientName: null,
    doctorId: null,
    doctorName: null,
    treatmentType: null,
    medicalRecordsStatue: null,
  },
  records_rules: {
    patientId: [
      { required: true, message: "患者ID不能为空", trigger: "blur" }
    ],
    patientName: [
      { required: true, message: "患者姓名不能为空", trigger: "blur" }
    ],
  }
});

const { records_queryParams, records_form, records_rules } = toRefs(records_data);



const recordsList = ref([]);
const open_records = ref(false);
function reset_records() {
  records_form.value = {
    medicalRecordsId: null,
    patientId: null,
    patientName: null,
    doctorId: null,
    doctorName: null,
    maincase: null,
    treatmentType: null,
    clinicalResults: null,
    medicalRecordsStatue: null,
    createdTime: null,
    updatedTime: null,

  };
  proxy.resetForm("supplierRef");
}


import { getRecordsByPatientId } from "@/api/record/records";

function handleView_records(row) {
  reset_records();
  if (!row.patientId) {
    console.error("MedicineId is invalid!");
    return;
  }
  open_records.value = true;
  title.value = "查看个人就诊记录";
  loading.value = true;
//   getRecordsByPatientId(row.patientId).then((response) => {
//     recordsList.value = response.data;
//     console.log(response);
//     console.log(recordsList.value);
//     loading.value = false;
//   });
 }
getRecordsByPatientId(row.patientId).then((response) => {
  recordsList.value = response.data;
  console.log(response);
  this.$nextTick(() => {
    console.log(recordsList.value);  // 等待 Vue 更新后输出
  });
  loading.value = false;
});

function submitForm_records() {
  open_records.value = false;
}






getList();
</script>
<style></style>