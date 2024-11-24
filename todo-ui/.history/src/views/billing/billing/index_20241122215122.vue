<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入患者姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="就诊医生" prop="doctorName">
        <el-input
          v-model="queryParams.doctorName"
          placeholder="请输入就诊医生"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
      <p>今日账单总数：{{ billingStats.todayBillingCount }}</p>
    <p>今日总金额：{{ billingStats.todayTotalAmount }}</p>
    <p>已支付金额：{{ billingStats.todayPaidAmount }}</p>
    <p>未支付金额：{{ billingStats.todayUnpaidAmount }}</p>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['billing:billing:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['billing:billing:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['billing:billing:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['billing:billing:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="billingList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单id" align="center" prop="billingId" width="80px" />
      <el-table-column label="患者姓名" align="center" prop="patientName" width="80px" />
      <el-table-column label="就诊医生" align="center" prop="doctorName" />

      
      <el-table-column label="账单日期" align="center" prop="billingDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.billingDate, '{y}-{m}-{d}  {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>

      
      <el-table-column label="金额" align="center" prop="totalAmount" />
      <el-table-column label="支付状态" align="center" prop="paymentStatus">
        <template #default="scope">
          <dict-tag :options="tt_paystatus" :value="scope.row.paymentStatus ? scope.row.paymentStatus.split(',') : []"/>
        </template>
      </el-table-column>
      <el-table-column label="支付方式" align="center" prop="paymentMethod">
        <template #default="scope">
          <dict-tag :options="tt_paymethod" :value="scope.row.paymentMethod ? scope.row.paymentMethod.split(',') : []"/>
        </template>
      </el-table-column>
      <el-table-column label="见证人" align="center" prop="receiver" />
      <el-table-column label="备注" align="center" prop="notes" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['billing:billing:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['billing:billing:remove']">删除</el-button>
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

    <!-- 添加或修改账单管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="billingRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="就诊医生" prop="doctorName">
          <el-input v-model="form.doctorName" placeholder="请输入就诊医生" />
        </el-form-item>
        <el-form-item label="账单日期" prop="billingDate">
          <el-date-picker v-model="form.billingDate"value-format="YYYY-MM-DD HH:mm:ss" type="datetime" placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="金额" prop="totalAmount">
          <el-input v-model="form.totalAmount" placeholder="请输入金额" />
        </el-form-item>

        
        <el-form-item label="支付状态" prop="paymentStatus">
          <el-checkbox-group v-model="form.paymentStatus">
            <el-checkbox
              v-for="dict in tt_paystatus"
              :key="dict.value"
              :label="dict.value">
              {{dict.label}}
            </el-checkbox>
          </el-checkbox-group>

          
        </el-form-item>
        <el-form-item label="支付方式" prop="paymentMethod">
          <el-checkbox-group v-model="form.paymentMethod">
            <el-checkbox
              v-for="dict in tt_paymethod"
              :key="dict.value"
              :label="dict.value">
              {{dict.label}}
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
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Billing">
import { listBilling, getBilling, delBilling, addBilling, updateBilling } from "@/api/billing/billing";
import { useBillingStatsStore } from "@/store/billingStats";
// import { parseTime } from "@/utils/time";
// import { useDict } from "@/utils/dict";
import { reactive, ref, onMounted } from "vue";

const { proxy } = getCurrentInstance();
const { tt_paymethod, tt_paystatus } = useDict("tt_paymethod", "tt_paystatus");

// 数据初始化
const billingList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(false);
const total = ref(0);
const title = ref("");
const billingStats = reactive({
  todayBillingCount: 0,
  todayTotalAmount: 0.0,
  todayPaidAmount: 0.0,
  todayUnpaidAmount: 0.0,
});

// 表单数据和规则
const form = reactive({
  billingId: null,
  patientName: null,
  doctorName: null,
  billingDate: null,
  totalAmount: null,
  paymentStatus: [],
  paymentMethod: [],
  receiver: null,
  notes: null,
});
const queryParams = reactive({
  pageNum: 1,
  pageSize: 10,
  patientName: null,
  doctorName: null,
  paymentStatus: null,
});
const rules = {
  patientName: [{ required: true, message: "患者姓名不能为空", trigger: "blur" }],
  doctorName: [{ required: true, message: "就诊医生不能为空", trigger: "blur" }],
  billingDate: [{ required: true, message: "账单日期不能为空", trigger: "blur" }],
  totalAmount: [{ required: true, message: "金额不能为空", trigger: "blur" }],
  paymentStatus: [{ required: true, message: "支付状态不能为空", trigger: "blur" }],
  paymentMethod: [{ required: true, message: "支付方式不能为空", trigger: "change" }],
};

onMounted(async () => {
  const statsStore = useBillingStatsStore();
  await statsStore.fetchTodayStats();
  Object.assign(billingStats, statsStore.$state);
});

function getList() {
  loading.value = true;
  listBilling(queryParams).then(response => {
    billingList.value = response.rows || [];
    total.value = response.total || 0;
    loading.value = false;
  });
}

function handleQuery() {
  queryParams.pageNum = 1;
  getList();
}

function resetQuery() {
  proxy.$refs["queryRef"].resetFields();
  handleQuery();
}

function handleAdd() {
  Object.assign(form, {
    billingId: null,
    patientName: null,
    doctorName: null,
    billingDate: null,
    totalAmount: null,
    paymentStatus: [],
    paymentMethod: [],
    receiver: null,
    notes: null,
  });
  open.value = true;
  title.value = "添加账单管理";
}

function handleUpdate(row) {
  const billingId = row.billingId || ids.value[0];
  getBilling(billingId).then(response => {
    Object.assign(form, response.data);
    form.paymentStatus = form.paymentStatus.split(",");
    form.paymentMethod = form.paymentMethod.split(",");
    open.value = true;
    title.value = "修改账单管理";
  });
}

function submitForm() {
  proxy.$refs["billingRef"].validate(valid => {
    if (valid) {
      form.paymentStatus = form.paymentStatus.join(",");
      form.paymentMethod = form.paymentMethod.join(",");
      const action = form.billingId ? updateBilling : addBilling;
      action(form).then(() => {
        proxy.$modal.msgSuccess(form.billingId ? "修改成功" : "新增成功");
        open.value = false;
        getList();
      });
    }
  });
}

getList();
</script>

<style>
.stat-card {
  text-align: center;
  font-size: 16px;
}

.stat-value {
  font-size: 24px;
  font-weight: bold;
  color: #409eff;
  margin-top: 10px;
}
</style>