<template>
  <div class="app-container">
    <el-row class="mb8">
      <el-col>
        <el-button
          type="primary"
          plain
          icon="ArrowLeft"
          @click="goBack"
        >返回</el-button>
      </el-col>
    </el-row>
    
    <el-table v-loading="loading" :data="billingList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单id" align="center" prop="billingId" width="80px" />
      <el-table-column label="患者姓名" align="center" prop="patientName" width="80px" />
      <el-table-column label="就诊医生" align="center" prop="doctorName" />
      <el-table-column label="账单日期" align="center" prop="billingDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.billingDate, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="金额" align="center" prop="totalAmount" />
      <el-table-column label="备注" align="center" prop="notes" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />
  </div>
</template>

<script setup>
import { listBilling, getBilling, delBilling, updateBilling } from "@/api/unpay/unpay";
import { useRouter } from 'vue-router';

const router = useRouter();

const billingList = ref([]);
const loading = ref(true);
const total = ref(0);

const queryParams = reactive({
  pageNum: 1,
  pageSize: 10,
  paymentStatus: "2", // 只查询未支付订单
});

function getList() {
  loading.value = true;
  listBilling(queryParams).then(response => {
    billingList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

function handleUpdate(row) {
  const _billingId = row.billingId;
  getBilling(_billingId).then(response => {
    // 跳转到修改页面或打开弹窗逻辑
  });
}

function handleDelete(row) {
  const _billingId = row.billingId;
  delBilling(_billingId).then(() => {
    getList();
  });
}

function goBack() {
  router.back();
}

getList();
</script>
