<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="patientName">
        <el-input v-model="queryParams.patientName" placeholder="请输入患者姓名" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorId">
        <el-select v-model="queryParams.doctorId" placeholder="请选择医生姓名" clearable>
          <el-option v-for="dict in tt_doctor" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="预约项目" prop="appointmentProject">
        <el-select v-model="queryParams.appointmentProject" placeholder="请选择预约项目" clearable>
          <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="预约状态" prop="appointmentStatus">
        <el-select v-model="queryParams.appointmentStatus" placeholder="请选择预约状态" clearable>
          <el-option v-for="dict in tt_appointments_status" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>

      <el-form-item label="创建时间" style="width: 308px">
        <el-date-picker v-model="dateRange" value-format="YYYY-MM-DD" type="daterange" range-separator="-"
          start-placeholder="开始日期" end-placeholder="结束日期"></el-date-picker>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>


    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd"
          v-hasPermi="['appointment:appointments:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['appointment:appointments:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['appointment:appointments:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['appointment:appointments:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="appointmentsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="预约ID" align="center" prop="appointmentId" />
      <el-table-column label="患者姓名" align="center" prop="ttPatient.name" />
      <el-table-column label="医生姓名" align="center" prop="ttDoctor.name">
        <template #default="scope">
          <dict-tag :options="tt_doctor" :value="scope.row.doctorId" />
        </template>
      </el-table-column>

      <!-- 将会诊时间改为年月日--几点到几点 -->
      <el-table-column label="会诊时间" align="center" prop="appointmentTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.appointmentTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>


      <el-table-column label="预约时长" align="center" prop="appointmentDuration" />
      <el-table-column label="预约项目" align="center" prop="appointmentProject">
        <template #default="scope">
          <dict-tag :options="tt_tooth" :value="scope.row.appointmentProject" />
        </template>
      </el-table-column>
      <el-table-column label="预约状态" align="center" prop="appointmentStatus">
        <template #default="scope">
          <dict-tag :options="tt_appointments_status" :value="scope.row.appointmentStatus" />
        </template>
      </el-table-column>
      <el-table-column label="预约创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['appointment:appointments:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['appointment:appointments:remove']">删除</el-button>
          <el-button type="primary" plain @click="handleAdd_billing" v-hasPermi="['billing:billing:add']"
            v-if="scope.row.appointmentStatus === '1'">
            <Icon icon="material-symbols:money-bag" /> 记账
          </el-button>

        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize" @pagination="getList" />

    <!-- 添加或修改预约功能对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>

      <el-form ref="appointmentsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="patientForm.name">
          <el-autocomplete v-model="patientForm.name" placeholder="请输入患者姓名" :fetch-suggestions="queryPatients"
            @select="handlePatientSelect">
            <template #default="{ item }">
              <div>
                <span>{{ item.name }}</span>，电话号：<span>{{ item.phone }}</span>
              </div>
            </template>
          </el-autocomplete>
        </el-form-item>


        <el-form-item label="医生姓名" prop="ttDoctor.name">
          <el-select v-model="form.ttDoctor.name" placeholder="请选择医生姓名">
            <el-option v-for="dict in tt_doctor" :key="dict.value" :label="dict.label" :value="dict.value" />
          </el-select>
        </el-form-item>

        <el-form-item label="会诊时间" prop="appointmentTime">
          <el-date-picker v-model="form.appointmentTime" value-format="YYYY-MM-DD HH:mm:ss" type="datetime"
            placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>


        <el-form-item label="预约时长" prop="appointmentDuration">
          <el-input v-model="form.appointmentDuration" placeholder="请输入预约时长" />
        </el-form-item>
        <el-form-item label="预约项目" prop="appointmentProject">
          <el-select v-model="form.appointmentProject" placeholder="请选择预约项目">
            <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="预约状态" prop="appointmentStatus">
          <el-select v-model="form.appointmentStatus" placeholder="请选择预约状态">
            <el-option v-for="dict in tt_appointments_status" :key="dict.value" :label="dict.label"
              :value="dict.value"></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <!-- 添加或修改账单管理对话框 -->
    <el-dialog :title="title" v-model="openbilling" width="500px" append-to-body>
      <el-form ref="billingRef" :model="form_billing" :rules="rules_billing" label-width="80px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form_billing.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="就诊医生" prop="doctorName">
          <el-input v-model="form_billing.doctorName" placeholder="请输入就诊医生" />
        </el-form-item>
        <el-form-item label="账单日期" prop="billingDate">
          <el-date-picker v-model="form_billing.billingDate" value-format="YYYY-MM-DD HH:mm:ss" type="datetime"
            placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="金额" prop="totalAmount">
          <el-input v-model="form_billing.totalAmount" placeholder="请输入金额" />
        </el-form-item>

        <el-form-item label="支付状态" prop="paymentStatus">
          <el-checkbox-group v-model="form_billing.paymentStatus">
            <el-checkbox v-for="dict in tt_paystatus" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>

        <el-form-item label="支付方式" prop="paymentMethod">
          <el-checkbox-group v-model="form_billing.paymentMethod">
            <el-checkbox v-for="dict in tt_paymethod" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="见证人" prop="receiver">
          <el-input v-model="form_billing.receiver" placeholder="请输入见证人" />
        </el-form-item>
        <el-form-item label="备注" prop="notes">
          <el-input v-model="form_billing.notes" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>

      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_off">确 定</el-button>
          <el-button @click="cancel_off">取 消</el-button>
        </div>
      </template>
    </el-dialog>




  </div>
</template>




<script setup name="Appointments">
import { listAppointments, getAppointments, delAppointments, addAppointments, updateAppointments } from "@/api/appointment/appointments";
import { listPatientlists } from "@/api/patientlist/patientlists";

const { proxy } = getCurrentInstance();
const { tt_doctor, tt_tooth, tt_appointments_status } = proxy.useDict('tt_doctor', 'tt_tooth', 'tt_appointments_status');
const { tt_paymethod, tt_paystatus } = proxy.useDict('tt_paymethod', 'tt_paystatus');

const appointmentsList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const dateRange = ref([]);


const data = reactive({
  form: {
    doctorName: null,
    patientName: null,
    pageNum: 1,
    pageSize: 10,
    patientId: null,
    doctorId: null,
    appointmentDuration: null,
    appointmentProject: null,
    appointmentStatus: null,
    ttDoctor: {
      name: null,
    },
    ttPatient: {
      name: null,
    },
  },
  queryParams: {
    doctorName: null,
    patientName: null,
    pageNum: 1,
    pageSize: 10,
    patientId: null,
    doctorId: null,
    appointmentDuration: null,
    appointmentProject: null,
    appointmentStatus: null,

    ttDoctor: {
      name: null,
    },
    ttPatient: {
      name: null,
    },
  },
  rules: {
    patientId: [
      { required: true, message: "患者姓名不能为空", trigger: "blur" }
    ],
    doctorId: [
      { required: true, message: "医生姓名不能为空", trigger: "change" }
    ],
    appointmentTime: [
      { required: true, message: "会诊时间不能为空", trigger: "blur" }
    ],
    appointmentDuration: [
      { required: true, message: "预约时长不能为空", trigger: "blur" }
    ],
    appointmentProject: [
      { required: true, message: "预约项目不能为空", trigger: "change" }
    ],
    appointmentStatus: [
      { required: true, message: "预约状态不能为空", trigger: "change" }
    ],
  },

});

const { queryParams, form, rules } = toRefs(data);
/** 查询预约功能列表 */
function getList() {
  loading.value = true;
  console.log({ ...queryParams.value });
  console.log(dateRange.value);
  listAppointments(proxy.addDateRange(queryParams.value, dateRange.value)).then(response => {
    console.log(response)
    appointmentsList.value = response.rows;
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
    doctorName: null,
    patientName: null,
    appointmentId: null,
    patientId: null,
    doctorId: null,
    appointmentDate: null,
    appointmentTime: null,
    appointmentDuration: null,
    appointmentProject: null,
    appointmentStatus: null,
    createdAt: null,
    updatedAt: null,
    ttDoctor: {
      name: null,
    },
    ttPatient: {
      name: null,
    },
  };
  proxy.resetForm("appointmentsRef");
}

/** 搜索按钮操作 */
function handleQuery() {
  // 检查 dateRange 并格式化为 YYYY-MM-DD
  queryParams.value.pageNum = 1;
  queryParams.value.startDate = dateRange.value?.[0]
    ? proxy.parseTime(dateRange.value[0], '{y}-{m}-{d}')
    : null; // 格式化第一个日期
  queryParams.value.endDate = dateRange.value?.[1]
    ? proxy.parseTime(dateRange.value[1], '{y}-{m}-{d}')
    : null; // 格式化第二个日期
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  dateRange.value = [];
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
  title.value = "添加预约功能";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _appointmentId = row.appointmentId || ids.value
  getAppointments(_appointmentId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改预约功能";
  });
}

/** 提交按钮 */
function submitForm() {
  console.log(dateRange.value)
  proxy.$refs["appointmentsRef"].validate(valid => {
    if (valid) {
      if (form.value.appointmentId != null) {
        updateAppointments(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addAppointments(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除预约功能编号为"' + _appointmentIds + '"的数据项？').then(function () {
    return delAppointments(_appointmentIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => { });
}


// 入账功能
import { addBilling } from "@/api/billing/billing";
const openbilling = ref(false);
const data_billing = reactive({
  form_billing: {},
  queryParams_biling: {
    pageNum: 1,
    pageSize: 10,
    patientName: null,
    doctorName: null,
    paymentStatus: null,
  },
  rules_billing: {
    patientName: [
      { required: true, message: "患者姓名不能为空", trigger: "blur" }
    ],
    doctorName: [
      { required: true, message: "就诊医生不能为空", trigger: "blur" }
    ],
    billingDate: [
      { required: true, message: "账单日期不能为空", trigger: "blur" }
    ],
    totalAmount: [
      { required: true, message: "金额不能为空", trigger: "blur" }
    ],
    paymentStatus: [
      { required: true, message: "支付状态不能为空", trigger: "blur" }
    ],
    paymentMethod: [
      { required: true, message: "支付方式不能为空", trigger: "change" }
    ],
  }
});
const { form_billing, rules_billing } = toRefs(data_billing);

/** 新增按钮操作 */
function handleAdd_billing() {
  openbilling.value = true;
  title.value = "添加账单";
}

/** 提交按钮 */
function submitForm_off() {
  proxy.$refs["billingRef"].validate((valid) => {
    if (valid) {
      form_billing.value.paymentStatus = form_billing.value.paymentStatus.join(",");
      form_billing.value.paymentMethod = form_billing.value.paymentMethod.join(",");
      console.log(form_billing.value);
      addBilling(form_billing.value).then((response) => {
        proxy.$modal.msgSuccess("新增成功");
        openbilling.value = false;
        getList();
      });
    }
  });
}

/** 取消按钮 */
function cancel_off() {
  openbilling.value = false;
}


// 表单数据（更名为 patientForm）
const patientForm = ref({
  name: "",
});

// 查询患者数据的方法
const queryPatients = async (queryString, callback) => {
  if (!queryString) {
    callback([]);
    return;
  }
  try {
    const response = await listPatientlists({ name: queryString });
    console.log("接口返回数据：", response); // 调试打印
    if (response?.data) {
      const patients = response.data.map((patient) => ({
        name: patient.name,
        phone: patient.phone,
        patientId: patient.patientId,
        gender: patient.gender,
        birthday: patient.birthday,
        address: patient.address,
        remarks: patient.remarks,
      }));
      console.log("处理后的患者数据：", patients); // 调试打印
      callback(patients);
    } else {
      callback([]);
    }
  } catch (error) {
    console.error("获取患者数据失败：", error);
    callback([]);
  }
};

// 选择患者后填充表单
const handlePatientSelect = (item) => {
  patientForm.value.name = item.name; // 填充姓名
  // 可根据需求填充其他患者信息
  console.log("选择的患者信息：", item);
};


// 调用以加载列表
getList();
</script>