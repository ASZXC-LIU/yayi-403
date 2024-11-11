<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="patientId">
        <el-input
          v-model="queryParams.patientId"
          placeholder="请输入患者姓名"
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
        
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['bill:bills:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <!-- <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['bill:bills:remove']"
        >删除</el-button> -->
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['bill:bills:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="billsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单ID" align="center" prop="billingId" />
      <el-table-column label="患者姓名" align="center" prop="patientId" />
      <el-table-column label="收费金额" align="center" prop="amount" />
      <el-table-column label="支付方式" align="center" prop="paymentMethod" />
      <el-table-column label="支付状态" align="center" prop="paymentStatus" />
      <el-table-column label="支付时间" align="center" prop="paymentTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.paymentTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="收费记录创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="收费记录更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['bill:bills:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['bill:bills:remove']">删除</el-button>
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

    <!-- 添加或修改收费对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="billsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="patientId">
          <el-input v-model="form.patientId" placeholder="请输入患者姓名" />
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

<script setup name="Bills">
import { listBills, getBills, delBills, addBills, updateBills } from "@/api/bill/bills";

const { proxy } = getCurrentInstance();

const billsList = ref([]);
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
    paymentMethod: null,
    paymentStatus: null,
  },
  rules: {
    amount: [
      { required: true, message: "收费金额不能为空", trigger: "blur" }
    ],
    paymentMethod: [
      { required: true, message: "支付方式不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询收费列表 */
function getList() {
  loading.value = true;
  listBills(queryParams.value).then(response => {
    billsList.value = response.rows;
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
    patientId: null,
    appointmentId: null,
    amount: null,
    paymentMethod: null,
    paymentStatus: null,
    paymentTime: null,
    createdAt: null,
    updatedAt: null
  };
  proxy.resetForm("billsRef");
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



/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _billingId = row.billingId || ids.value
  getBills(_billingId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改收费";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["billsRef"].validate(valid => {
    if (valid) {
      if (form.value.billingId != null) {
        updateBills(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addBills(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除收费编号为"' + _billingIds + '"的数据项？').then(function() {
    return delBills(_billingIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('bill/bills/export', {
    ...queryParams.value
  }, `bills_${new Date().getTime()}.xlsx`)
}

getList();
</script>
