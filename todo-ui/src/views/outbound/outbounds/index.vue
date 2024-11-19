<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="物品id" prop="itemId">
        <el-input v-model="queryParams.itemId" placeholder="请输入物品ID" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="物品名字" prop="itemName">
        <el-input v-model="queryParams.itemName" placeholder="请输入物品名字" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="负责人" prop="responsible">
        <el-input v-model="queryParams.responsible" placeholder="请输入负责人" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="出库时间" prop="outboundTime">
        <el-date-picker clearable v-model="queryParams.outboundTime" type="date" value-format="YYYY-MM-DD"
          placeholder="请选择出库时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd"
          v-hasPermi="['outbound:outbounds:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['outbound:outbounds:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['outbound:outbounds:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['outbound:outbounds:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="outboundsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="入库工单id" align="center" prop="outboundId" />
      <el-table-column label="物品ID" align="center" prop="itemId" />
      <el-table-column label="物品名字" align="center" prop="itemName" />
      <el-table-column label="负责人" align="center" prop="responsible" />
      <el-table-column label="出库原因" align="center" prop="reason" />
      <el-table-column label="出库数量" align="center" prop="quantity" />
      <el-table-column label="剂量单位" align="center" prop="unit" />
      <el-table-column label="开销原因" align="center" prop="expensesReason" />
      <el-table-column label="总开销" align="center" prop="spending" />
      <el-table-column label="出库时间" align="center" prop="outboundTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.outboundTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="修改时间" align="center" prop="updateTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updateTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['outbound:outbounds:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['outbound:outbounds:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum" v-model:limit="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改出库工单对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="outboundsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="物品ID" prop="itemId">
          <el-input v-model="form.itemId" placeholder="请输入物品ID" />
        </el-form-item>
        <el-form-item label="物品名字" prop="itemName">
          <el-input v-model="form.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="出库原因" prop="reason">
          <el-input v-model="form.reason" placeholder="请输入出库原因" />
        </el-form-item>
        <el-form-item label="出库数量" prop="quantity">
          <el-input v-model="form.quantity" placeholder="请输入出库数量" />
        </el-form-item>
        <el-form-item label="计量单位" prop="unit">
          <el-input v-model="form.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="开销原因" prop="expensesReason">
          <el-input v-model="form.expensesReason" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="总开销" prop="spending">
          <el-input v-model="form.spending" placeholder="请输入总开销" />
        </el-form-item>
        <el-form-item label="出库时间" prop="outboundTime">
          <el-date-picker clearable v-model="form.outboundTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择出库时间">
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

<script setup name="Outbounds">
import { listOutbounds, getOutbounds, delOutbounds, addOutbounds, updateOutbounds } from "@/api/outbound/outbounds";

import {
  formatPriceToLong,
  formatPriceToDecimal
} from "@/utils/price";

const { proxy } = getCurrentInstance();

const outboundsList = ref([]);
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
    itemId: null,
    itemName: null,
    responsible: null,
    outboundTime: null,
  },
  rules: {
    itemId: [
      { required: true, message: "物品ID不能为空", trigger: "blur" }
    ],
    itemName: [
      { required: true, message: "物品名字不能为空", trigger: "blur" }
    ],
    responsible: [
      { required: true, message: "负责人不能为空", trigger: "blur" }
    ],
    reason: [
      { required: true, message: "出库原因不能为空", trigger: "blur" }
    ],
    quantity: [
      { required: true, message: "出库数量不能为空", trigger: "blur" }
    ],
    unit: [
      { required: true, message: "剂量单位不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询出库工单列表 */
function getList() {
  loading.value = true;
  listOutbounds(queryParams.value).then(response => {
    console.log(response);
    response.rows.forEach((item) => {
      item.spending = formatPriceToDecimal(item.spending);
    })
    outboundsList.value = response.rows;
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
    outboundId: null,
    itemId: null,
    itemName: null,
    responsible: null,
    reason: null,
    quantity: null,
    unit: null,
    expensesReason: null,
    spending: null,
    outboundTime: null,
    createTime: null,
    updateTime: null
  };
  proxy.resetForm("outboundsRef");
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
  ids.value = selection.map(item => item.outboundId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加出库工单";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _outboundId = row.outboundId || ids.value
  getOutbounds(_outboundId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改出库工单";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["outboundsRef"].validate(valid => {
    if (valid) {
      if (form.value.outboundId != null) {
        updateOutbounds(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addOutbounds(form.value).then(response => {
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
  const _outboundIds = row.outboundId || ids.value;
  proxy.$modal.confirm('是否确认删除出库工单编号为"' + _outboundIds + '"的数据项？').then(function () {
    return delOutbounds(_outboundIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => { });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('outbound/outbounds/export', {
    ...queryParams.value
  }, `outbounds_${new Date().getTime()}.xlsx`)
}

getList();
</script>
