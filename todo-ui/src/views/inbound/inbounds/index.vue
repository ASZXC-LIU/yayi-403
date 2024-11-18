<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="物品id" prop="itemId">
        <el-input v-model="queryParams.itemId" placeholder="请输入物品id" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="物品名字" prop="itemName">
        <el-input v-model="queryParams.itemName" placeholder="请输入物品名字" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="负责人" prop="responsible">
        <el-input v-model="queryParams.responsible" placeholder="请输入负责人" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="供应来源" prop="supplier">
        <el-input v-model="queryParams.supplier" placeholder="请输入供应来源" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="入库时间" prop="inboundTime">
        <el-date-picker clearable v-model="queryParams.inboundTime" type="date" value-format="YYYY-MM-DD"
          placeholder="请选择入库时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="生产日期" prop="manufactureDate">
        <el-date-picker clearable v-model="queryParams.manufactureDate" type="date" value-format="YYYY-MM-DD"
          placeholder="请选择生产日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="过期日期" prop="expirationDate">
        <el-date-picker clearable v-model="queryParams.expirationDate" type="date" value-format="YYYY-MM-DD"
          placeholder="请选择过期日期">
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
          v-hasPermi="['inbound:inbounds:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['inbound:inbounds:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['inbound:inbounds:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['inbound:inbounds:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="inboundsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="入库工单id" align="center" prop="inboundId" />
      <el-table-column label="物品id" align="center" prop="itemId" />
      <el-table-column label="物品名字" align="center" prop="itemName" />
      <el-table-column label="负责人" align="center" prop="responsible" />
      <el-table-column label="供应来源" align="center" prop="supplier" />
      <el-table-column label="入库数量" align="center" prop="quantity" />
      <el-table-column label="剂量单位" align="center" prop="unit" />
      <el-table-column label="进价" align="center" prop="purchasePrice" />
      <el-table-column label="运费" align="center" prop="freight" />
      <el-table-column label="总开销" align="center" prop="spending" />
      <el-table-column label="入库时间" align="center" prop="inboundTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.inboundTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="生产日期" align="center" prop="manufactureDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.manufactureDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保质期" align="center" prop="shelfLife" />
      <el-table-column label="过期日期" align="center" prop="expirationDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.expirationDate, '{y}-{m}-{d}') }}</span>
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
            v-hasPermi="['inbound:inbounds:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['inbound:inbounds:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum" v-model:limit="queryParams.pageSize"
      @pagination="getList" />

    <!-- 添加或修改入库工单对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="inboundsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="物品id" prop="itemId">
          <el-input v-model="form.itemId" placeholder="请输入物品id" />
        </el-form-item>
        <el-form-item label="物品名字" prop="itemName">
          <el-input v-model="form.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="供应来源" prop="supplier">
          <el-input v-model="form.supplier" placeholder="请输入供应来源" />
        </el-form-item>
        <el-form-item label="入库数量" prop="quantity">
          <el-input v-model="form.quantity" placeholder="请输入入库数量" />
        </el-form-item>
        <el-form-item label="剂量单位" prop="unit">
          <el-input v-model="form.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="进价" prop="purchasePrice">
          <el-input v-model="form.purchasePrice" placeholder="请输入进价" />
        </el-form-item>
        <el-form-item label="运费" prop="freight">
          <el-input v-model="form.freight" placeholder="请输入运费" />
        </el-form-item>
        <el-form-item label="总开销" prop="spending">
          <el-input v-model="form.spending" placeholder="请输入总开销" />
        </el-form-item>
        <el-form-item label="入库时间" prop="inboundTime">
          <el-date-picker clearable v-model="form.inboundTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择入库时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="生产日期" prop="manufactureDate">
          <el-date-picker clearable v-model="form.manufactureDate" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="保质期" prop="shelfLife">
          <el-input v-model="form.shelfLife" placeholder="请输入保质期" />
        </el-form-item>
        <el-form-item label="过期日期" prop="expirationDate">
          <el-date-picker clearable v-model="form.expirationDate" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择过期日期">
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

<script setup name="Inbounds">
import { listInbounds, getInbounds, delInbounds, addInbounds, updateInbounds } from "@/api/inbound/inbounds";


//引入自定义价格格式化js
import {
  formatPriceToLong,
  formatPriceToDecimal
} from "@/utils/price";

const { proxy } = getCurrentInstance();

const inboundsList = ref([]);
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
    quantity: null,
    responsible: null,
    supplier: null,
    inboundTime: null,
    manufactureDate: null,
    expirationDate: null,
  },
  rules: {
    itemId: [
      { required: true, message: "物品id不能为空", trigger: "blur" }
    ],
    itemName: [
      { required: true, message: "物品名字不能为空", trigger: "blur" }
    ],
    responsible: [
      { required: true, message: "负责人不能为空", trigger: "blur" }
    ],
    supplier: [
      { required: true, message: "供应来源不能为空", trigger: "blur" }
    ],
    quantity: [
      { required: true, message: "入库数量不能为空", trigger: "blur" }
    ],
    unit: [
      { required: true, message: "剂量单位不能为空", trigger: "blur" }
    ],
    purchasePrice: [
      { required: true, message: "进价不能为空", trigger: "blur" }
    ],
    freight: [
      { required: true, message: "运费不能为空", trigger: "blur" }
    ],
    spending: [
      { required: true, message: "总开销不能为空", trigger: "blur" }
    ],
    inboundTime: [
      { required: true, message: "入库时间不能为空", trigger: "blur" }
    ],
    manufactureDate: [
      { required: true, message: "生产日期不能为空", trigger: "blur" }
    ],
    shelfLife: [
      { required: true, message: "保质期不能为空", trigger: "blur" }
    ],
    expirationDate: [
      { required: true, message: "过期日期不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询入库工单列表 */
function getList() {
  loading.value = true;
  listInbounds(queryParams.value).then(response => {
    //将价格的long转换为decimal

    response.rows.forEach((item) => {
      item.purchasePrice = formatPriceToDecimal(item.purchasePrice);
      item.freight = formatPriceToDecimal(item.freight);
      item.spending = formatPriceToDecimal(item.spending);


    })

    inboundsList.value = response.rows;
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
    inboundId: null,
    itemId: null,
    itemName: null,
    responsible: null,
    supplier: null,
    quantity: null,
    unit: null,
    purchasePrice: null,
    freight: null,
    spending: null,
    inboundTime: null,
    manufactureDate: null,
    shelfLife: null,
    expirationDate: null,
    createTime: null,
    updateTime: null
  };
  proxy.resetForm("inboundsRef");
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
  ids.value = selection.map(item => item.inboundId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加入库工单";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _inboundId = row.inboundId || ids.value
  getInbounds(_inboundId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改入库工单";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["inboundsRef"].validate(valid => {
    if (valid) {
      if (form.value.inboundId != null) {
        updateInbounds(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addInbounds(form.value).then(response => {
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
  const _inboundIds = row.inboundId || ids.value;
  proxy.$modal.confirm('是否确认删除入库工单编号为"' + _inboundIds + '"的数据项？').then(function () {
    return delInbounds(_inboundIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => { });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('inbound/inbounds/export', {
    ...queryParams.value
  }, `inbounds_${new Date().getTime()}.xlsx`)
}

getList();
</script>
