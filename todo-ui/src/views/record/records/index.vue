<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者ID" prop="patientId">
        <el-input
          v-model="queryParams.patientId"
          placeholder="请输入患者ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="患者姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入患者姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生ID" prop="doctorId">
        <el-input
          v-model="queryParams.doctorId"
          placeholder="请输入医生ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorName">
        <el-input
          v-model="queryParams.doctorName"
          placeholder="请输入医生姓名"
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
          v-hasPermi="['record:records:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['record:records:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['record:records:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['record:records:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

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
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="180" >
        <template #default="scope">
          <el-button  type="primary" v-if="scope.row.medicalRecordsStatue === 1" @click="showBilling(scope.row)" v-hasPermi="['record:records:edit']">添加账单</el-button>
          
          


          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['record:records:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['record:records:remove']">删除</el-button>
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

    <!-- 添加或修改就诊记录对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="recordsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者ID" prop="patientId">
          <el-input v-model="form.patientId" placeholder="请输入患者ID" />
        </el-form-item>
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="医生ID" prop="doctorId">
          <el-input v-model="form.doctorId" placeholder="请输入医生ID" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="doctorName">
          <el-input v-model="form.doctorName" placeholder="请输入医生姓名" />
        </el-form-item>
        <el-form-item label="主诉" prop="maincase">
          <el-input v-model="form.maincase" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="治疗结果" prop="clinicalResults">
          <el-input v-model="form.clinicalResults" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <!-- 添加账单对话框 -->
    <el-dialog :title="title" v-model="open_billing" width="500px" append-to-body>
      <el-form ref="billingRef" :model="form_billing" :rules="rules_billing" label-width="80px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="就诊医生" prop="doctorName">
          <el-input v-model="form.doctorName" placeholder="请输入就诊医生" />
        </el-form-item>
        <el-form-item label="账单日期" prop="billingDate">
          <el-date-picker v-model="form.billingDate" value-format="YYYY-MM-DD HH:mm:ss" type="datetime"
            placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="金额" prop="totalAmount">
          <el-input v-model="form.totalAmount" placeholder="请输入金额" />
        </el-form-item>


        <el-form-item label="支付状态" prop="paymentStatus">
          <el-checkbox-group v-model="form.paymentStatus">
            <el-checkbox v-for="dict in tt_paystatus" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>


        </el-form-item>
        <el-form-item label="支付方式" prop="paymentMethod">
          <el-checkbox-group v-model="form.paymentMethod">
            <el-checkbox v-for="dict in tt_paymethod" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="见证人" prop="receiver">
          <el-input v-model="form.receiver" placeholder="请输入见证人" />
        </el-form-item>
        <el-form-item label="备注" prop="notes">
          <el-input v-model="form.notes" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel_billing">取 消</el-button>
        </div>
      </template>
    </el-dialog>


  </div>
</template>





<script setup name="Records">
import { listRecords, getRecords, delRecords, addRecords, updateRecords } from "@/api/record/records";

const { proxy } = getCurrentInstance();

const recordsList = ref([]);
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
    patientId: null,
    patientName: null,
    doctorId: null,
    doctorName: null,
    treatmentType: null,
    medicalRecordsStatue: null,
  },
  rules: {
    patientId: [
      { required: true, message: "患者ID不能为空", trigger: "blur" }
    ],
    patientName: [
      { required: true, message: "患者姓名不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询就诊记录列表 */
function getList() {
  loading.value = true;
  listRecords(queryParams.value).then(response => {
    recordsList.value = response.rows;
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
    appointmentId: null,
    billId: null,
    test: null,
    test2: null,
    test3: null,
    test4: null
  };
  proxy.resetForm("recordsRef");
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
  ids.value = selection.map(item => item.medicalRecordsId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加就诊记录";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _medicalRecordsId = row.medicalRecordsId || ids.value
  getRecords(_medicalRecordsId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改就诊记录";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["recordsRef"].validate(valid => {
    if (valid) {
      if (form.value.medicalRecordsId != null) {
        updateRecords(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addRecords(form.value).then(response => {
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
  const _medicalRecordsIds = row.medicalRecordsId || ids.value;
  proxy.$modal.confirm('是否确认删除就诊记录编号为"' + _medicalRecordsIds + '"的数据项？').then(function() {
    return delRecords(_medicalRecordsIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('record/records/export', {
    ...queryParams.value
  }, `records_${new Date().getTime()}.xlsx`)
}




// 以下为根据就诊状态新建账单功能
import {addBilling } from "@/api/billing/billing";

const data_billing = reactive({
  form_billing: {
    creditworthiness: null, // 绑定的值
  },
  queryParams_billing: {
    pageNum: 1,
    pageSize: 10,
    billingName: null,
    itemName: null,
    billingPhone: null,
    contact: null,
    creditworthiness: null,
  },

  rules_billing: {
    billingName: [
      { required: true, message: "供应商名称不能为空", trigger: "blur" }
    ],
    itemId: [
      { required: true, message: "供应货物ID不能为空", trigger: "blur" }
    ],
    itemName: [
      { required: true, message: "供应货物名称不能为空", trigger: "blur" }
    ],
    creditworthiness: [
      { required: true, message: "信用度不能为空", trigger: "change" }
    ],
  }
});
const { queryParams_billing,form_billing, rules_billing } = toRefs(data_billing);

// 取消按钮
function cancel_billing() {
  open_billing.value = false;
  reset();
}



//以下为查看货物的供应商详情功能

const billingsList = ref([]);
//以下为查看供应商详情操作
const open_billing = ref(false);
// 表单重置
function reset_billings() {
  form_billing.value = {
    billingId: null,
    patientName: null,
    doctorName: null,
    billingDate: null,
    totalAmount: null,
    paymentStatus: [],
    paymentMethod: [],
    receiver: null,
    notes: null
  };
  proxy.resetForm("billingRef");
}

function showBilling(row) {
  reset_billings();
  console.log(row);
  if (!row.patientId) {
    console.error("MedicineId is invalid!");
    return;
  }
  open_records.value = true;
  title.value = "查看个人就诊记录";
  loading.value = true;
    value.patientName = row.patientName; // 绑定患者姓名
    form_billing.value.doctorName = row.doctorName; // 绑定医生姓名
  addBilling(row).then((response) => {
    billingsList.value = response.rows;
    
    loading.value = false;
  });
}







getList();
</script>
