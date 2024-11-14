<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="物品ID" prop="itemId">
        <el-input
          v-model="queryParams.itemId"
          placeholder="请输入物品ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="负责人" prop="responsible">
        <el-input
          v-model="queryParams.responsible"
          placeholder="请输入负责人"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="对冲时间" prop="offsettingTime">
        <el-date-picker clearable
          v-model="queryParams.offsettingTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择对冲时间">
        </el-date-picker>
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
          v-hasPermi="['offsetting:offsettings:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['offsetting:offsettings:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['offsetting:offsettings:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['offsetting:offsettings:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="offsettingsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="对冲工单id" align="center" prop="offsettingId" />
      <el-table-column label="物品ID" align="center" prop="itemId" />
      <el-table-column label="负责人" align="center" prop="responsible" />
      <el-table-column label="对冲原因" align="center" prop="reason" />
      <el-table-column label="对冲数量" align="center" prop="quantity" />
      <el-table-column label="剂量单位" align="center" prop="unit" />
      <el-table-column label="开销原因" align="center" prop="expensesReason" />
      <el-table-column label="开销" align="center" prop="spending" />
      <el-table-column label="对冲时间" align="center" prop="offsettingTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.offsettingTime, '{y}-{m}-{d}') }}</span>
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
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['offsetting:offsettings:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['offsetting:offsettings:remove']">删除</el-button>
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

    <!-- 添加或修改对冲记录工单对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="offsettingsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="物品ID" prop="itemId">
          <el-input v-model="form.itemId" placeholder="请输入物品ID" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="对冲原因" prop="reason">
          <el-input v-model="form.reason" placeholder="请输入对冲原因" />
        </el-form-item>
        <el-form-item label="对冲数量" prop="quantity">
          <el-input v-model="form.quantity" placeholder="请输入对冲数量" />
        </el-form-item>
        <el-form-item label="剂量单位" prop="unit">
          <el-input v-model="form.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="开销原因" prop="expensesReason">
          <el-input v-model="form.expensesReason" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="开销" prop="spending">
          <el-input v-model="form.spending" placeholder="请输入开销" />
        </el-form-item>
        <el-form-item label="对冲时间" prop="offsettingTime">
          <el-date-picker clearable
            v-model="form.offsettingTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择对冲时间">
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

<script setup name="Offsettings">
import { listOffsettings, getOffsettings, delOffsettings, addOffsettings, updateOffsettings } from "@/api/offsetting/offsettings";

const { proxy } = getCurrentInstance();

const offsettingsList = ref([]);
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
    responsible: null,
    offsettingTime: null,
  },
  rules: {
    itemId: [
      { required: true, message: "物品ID不能为空", trigger: "blur" }
    ],
    responsible: [
      { required: true, message: "负责人不能为空", trigger: "blur" }
    ],
    reason: [
      { required: true, message: "对冲原因不能为空", trigger: "blur" }
    ],
    quantity: [
      { required: true, message: "对冲数量不能为空", trigger: "blur" }
    ],
    unit: [
      { required: true, message: "剂量单位不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询对冲记录工单列表 */
function getList() {
  loading.value = true;
  listOffsettings(queryParams.value).then(response => {
    offsettingsList.value = response.rows;
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
    offsettingId: null,
    itemId: null,
    responsible: null,
    reason: null,
    quantity: null,
    unit: null,
    expensesReason: null,
    spending: null,
    offsettingTime: null,
    createTime: null,
    updateTime: null
  };
  proxy.resetForm("offsettingsRef");
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
  ids.value = selection.map(item => item.offsettingId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加对冲记录工单";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _offsettingId = row.offsettingId || ids.value
  getOffsettings(_offsettingId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改对冲记录工单";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["offsettingsRef"].validate(valid => {
    if (valid) {
      if (form.value.offsettingId != null) {
        updateOffsettings(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addOffsettings(form.value).then(response => {
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
  const _offsettingIds = row.offsettingId || ids.value;
  proxy.$modal.confirm('是否确认删除对冲记录工单编号为"' + _offsettingIds + '"的数据项？').then(function() {
    return delOffsettings(_offsettingIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('offsetting/offsettings/export', {
    ...queryParams.value
  }, `offsettings_${new Date().getTime()}.xlsx`)
}

getList();
</script>
