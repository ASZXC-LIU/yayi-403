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
      <el-form-item label="支付状态" prop="paymentStatus">
        <el-select v-model="queryParams.paymentStatus" placeholder="请选择支付状态" clearable>
          <el-option
            v-for="dict in tt_paystatus"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
      <el-table-column label="账单id" align="center" prop="billingId" />
      <el-table-column label="患者姓名" align="center" prop="patientName" />
      <el-table-column label="就诊医生" align="center" prop="doctorName" />
      <el-table-column label="账单日期" align="center" prop="billingDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.billingDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="金额" align="center" prop="totalAmount" />


      
      <el-table-column label="支付状态" align="center" prop="paymentStatus">
        <template #default="scope">
          <dict-tag :options="tt_paystatus" :value="scope.row.paymentStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="支付方式" align="center" prop="paymentMethod">
        <template #default="scope">
          <dict-tag :options="tt_paymethod" :value="scope.row.paymentMethod"/>
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
          <el-date-picker clearable
            v-model="form.billingDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择账单日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="金额" prop="totalAmount">
          <el-input v-model="form.totalAmount" placeholder="请输入金额" />
        </el-form-item>
        <el-form-item label="支付状态" prop="paymentStatus">
          <el-select v-model="form.paymentStatus" placeholder="请选择支付状态">
            <el-option
              v-for="dict in tt_paystatus"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="支付方式" prop="paymentMethod">
          <el-select v-model="form.paymentMethod" placeholder="请选择支付方式">
            <el-option
              v-for="dict in tt_paymethod"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
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

const { proxy } = getCurrentInstance();
const { tt_paymethod, tt_paystatus } = proxy.useDict('tt_paymethod', 'tt_paystatus');

const billingList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const data = reactive({
  form: {
    paymentStatus: null,
    paymentMethod: null,
  },
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    patientName: null,
    doctorName: null,
    paymentStatus: null,
    paymentMethod: null,
  },
  rules: {
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
      { required: true, message: "支付状态不能为空", trigger: "change" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询账单管理列表 */
function getList() {
  loading.value = true;
  listBilling(queryParams.value).then(response => {
    billingList.value = response.rows;
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
    billingId: null,
    patientName: null,
    doctorName: null,
    billingDate: null,
    totalAmount: null,
    paymentStatus: null,
    paymentMethod: null,
    receiver: null,
    notes: null
  };
  proxy.resetForm("billingRef");
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
  ids.value = selection.map(item => item.billingId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加账单管理";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _billingId = row.billingId || ids.value
  getBilling(_billingId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改账单管理";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["billingRef"].validate(valid => {
    if (valid) {
      if (form.value.billingId != null) {
        updateBilling(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addBilling(form.value).then(response => {
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
  const _billingIds = row.billingId || ids.value;
  proxy.$modal.confirm('是否确认删除账单管理编号为"' + _billingIds + '"的数据项？').then(function() {
    return delBilling(_billingIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('billing/billing/export', {
    ...queryParams.value
  }, `billing_${new Date().getTime()}.xlsx`)
}

getList();
</script>
