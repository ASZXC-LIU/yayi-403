<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="就诊记录ID" prop="medicalRecordsId">
        <el-input
          v-model="queryParams.medicalRecordsId"
          placeholder="请输入就诊记录ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物品ID" prop="itemId">
        <el-input
          v-model="queryParams.itemId"
          placeholder="请输入物品ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="供应商ID" prop="supplierId">
        <el-input
          v-model="queryParams.supplierId"
          placeholder="请输入供应商ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="使用数量" prop="quantity">
        <el-input
          v-model="queryParams.quantity"
          placeholder="请输入使用数量"
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
          v-hasPermi="['item:items:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['item:items:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['item:items:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['item:items:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="itemsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="物品使用记录ID" align="center" prop="recordItemId" />
      <el-table-column label="就诊记录ID" align="center" prop="medicalRecordsId" />
      <el-table-column label="物品ID" align="center" prop="itemId" />
      <el-table-column label="供应商ID" align="center" prop="supplierId" />
      <el-table-column label="物品类型，0为药品，1为工具" align="center" prop="itemType" />
      <el-table-column label="使用数量" align="center" prop="quantity" />
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
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['item:items:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['item:items:remove']">删除</el-button>
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

    <!-- 添加或修改就诊物品使用记录对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="itemsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="就诊记录ID" prop="medicalRecordsId">
          <el-input v-model="form.medicalRecordsId" placeholder="请输入就诊记录ID" />
        </el-form-item>
        <el-form-item label="物品ID" prop="itemId">
          <el-input v-model="form.itemId" placeholder="请输入物品ID" />
        </el-form-item>
        <el-form-item label="供应商ID" prop="supplierId">
          <el-input v-model="form.supplierId" placeholder="请输入供应商ID" />
        </el-form-item>
        <el-form-item label="使用数量" prop="quantity">
          <el-input v-model="form.quantity" placeholder="请输入使用数量" />
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

<script setup name="Items">
import { listItems, getItems, delItems, addItems, updateItems } from "@/api/item/items";

const { proxy } = getCurrentInstance();

const itemsList = ref([]);
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
    medicalRecordsId: null,
    itemId: null,
    supplierId: null,
    itemType: null,
    quantity: null,
  },
  rules: {
    medicalRecordsId: [
      { required: true, message: "就诊记录ID不能为空", trigger: "blur" }
    ],
    itemId: [
      { required: true, message: "物品ID不能为空", trigger: "blur" }
    ],
    supplierId: [
      { required: true, message: "供应商ID不能为空", trigger: "blur" }
    ],
    itemType: [
      { required: true, message: "物品类型，0为药品，1为工具不能为空", trigger: "change" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询就诊物品使用记录列表 */
function getList() {
  loading.value = true;
  listItems(queryParams.value).then(response => {
    itemsList.value = response.rows;
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
    recordItemId: null,
    medicalRecordsId: null,
    itemId: null,
    supplierId: null,
    itemType: null,
    quantity: null,
    createdAt: null,
    updatedAt: null
  };
  proxy.resetForm("itemsRef");
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
  ids.value = selection.map(item => item.recordItemId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加就诊物品使用记录";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _recordItemId = row.recordItemId || ids.value
  getItems(_recordItemId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改就诊物品使用记录";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["itemsRef"].validate(valid => {
    if (valid) {
      if (form.value.recordItemId != null) {
        updateItems(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addItems(form.value).then(response => {
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
  const _recordItemIds = row.recordItemId || ids.value;
  proxy.$modal.confirm('是否确认删除就诊物品使用记录编号为"' + _recordItemIds + '"的数据项？').then(function() {
    return delItems(_recordItemIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('item/items/export', {
    ...queryParams.value
  }, `items_${new Date().getTime()}.xlsx`)
}

getList();
</script>
