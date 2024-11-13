<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="工具名称" prop="toolsName">
        <el-input
          v-model="queryParams.toolsName"
          placeholder="请输入工具名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="供应商" prop="supplier">
        <el-input
          v-model="queryParams.supplier"
          placeholder="请输入供应商"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="过期日期" prop="expirationDate">
        <el-date-picker clearable
          v-model="queryParams.expirationDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择过期日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
        <el-button
          type="warning"
          icon="Edit"
          @click="handleAdd_off"
          v-hasPermi="['offsetting:offsettings:add']"
          >对冲</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['inventorytool:inventorytools:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['inventorytool:inventorytools:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['inventorytool:inventorytools:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['inventorytool:inventorytools:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="inventorytoolsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="工具ID" align="center" prop="toolsId" />
      <el-table-column label="工具名称" align="center" prop="toolsName" />
      <el-table-column label="工具描述" align="center" prop="toolsDescription" width="180"/>
      <el-table-column label="供应商" align="center" prop="supplier"  width="180"/>
      <el-table-column label="进价" align="center" prop="purchasePrice" />
      <el-table-column label="售价" align="center" prop="sellingPrice" />
      <el-table-column label="库存数量" align="center" prop="quantity" />
      <el-table-column label="工具的单位" align="center" prop="unit" />
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
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="180">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['inventorytool:inventorytools:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['inventorytool:inventorytools:remove']">删除</el-button>
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

    <!-- 添加或修改工具库存对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="inventorytoolsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="工具名称" prop="toolsName">
          <el-input v-model="form.toolsName" placeholder="请输入工具名称" />
        </el-form-item>
        <el-form-item label="工具描述" prop="toolsDescription">
          <el-input v-model="form.toolsDescription" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="供应商" prop="supplier">
          <el-input v-model="form.supplier" placeholder="请输入供应商" />
        </el-form-item>
        <el-form-item label="进价" prop="purchasePrice">
          <el-input v-model="form.purchasePrice" placeholder="请输入进价" />
        </el-form-item>
        <el-form-item label="售价" prop="sellingPrice">
          <el-input v-model="form.sellingPrice" placeholder="请输入售价" />
        </el-form-item>
        <el-form-item label="库存数量" prop="quantity">
          <el-input v-model="form.quantity" placeholder="请输入库存数量" />
        </el-form-item>
        <el-form-item label="计量单位" prop="unit">
          <el-input v-model="form.unit" placeholder="请输入工具的单位" />
        </el-form-item>
        <el-form-item label="生产日期" prop="manufactureDate">
          <el-date-picker clearable
            v-model="form.manufactureDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="保质期" prop="shelfLife">
          <el-input v-model="form.shelfLife" placeholder="请输入保质期" />
        </el-form-item>
        <el-form-item label="过期日期" prop="expirationDate">
          <el-date-picker clearable
            v-model="form.expirationDate"
            type="date"
            value-format="YYYY-MM-DD"
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

     <!-- 添加或修改对冲记录工单对话框 -->
     <el-dialog :title="title" v-model="openoffsetting" width="500px" append-to-body>
      <el-form ref="offsettingsRef" :model="form_off" :rules="rules_off" label-width="80px">
        <el-form-item label="物品名字" prop="itemName">
          <el-input v-model="form_off.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form_off.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="对冲原因" prop="reason">
          <el-input v-model="form_off.reason" placeholder="请输入对冲原因" />
        </el-form-item>
        <el-form-item label="对冲数量" prop="quantity">
          <el-input v-model="form_off.quantity" placeholder="请输入对冲数量" />
        </el-form-item>
        <el-form-item label="剂量单位" prop="unit">
          <el-input v-model="form_off.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="开销原因" prop="expensesReason">
          <el-input v-model="form_off.expensesReason" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="开销" prop="spending">
          <el-input v-model="form_off.spending" placeholder="请输入开销" />
        </el-form-item>
        <el-form-item label="对冲时间" prop="offsettingTime">
          <el-date-picker clearable
            v-model="form_off.offsettingTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择对冲时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_off">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Inventorytools">
import { listInventorytools, getInventorytools, delInventorytools, addInventorytools, updateInventorytools } from "@/api/inventorytool/inventorytools";

const { proxy } = getCurrentInstance();

const inventorytoolsList = ref([]);
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
    toolsName: null,
    supplier: null,
    expirationDate: null,
  },
  rules: {
    toolsName: [
      { required: true, message: "工具名称不能为空", trigger: "blur" }
    ],
    quantity: [
      { required: true, message: "库存数量不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询工具库存列表 */
function getList() {
  loading.value = true;
  listInventorytools(queryParams.value).then(response => {
    inventorytoolsList.value = response.rows;
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
    toolsId: null,
    toolsName: null,
    toolsDescription: null,
    supplier: null,
    origin: null,
    purchasePrice: null,
    sellingPrice: null,
    quantity: null,
    unit: null,
    manufactureDate: null,
    shelfLife: null,
    expirationDate: null,
    createdAt: null,
    updatedAt: null
  };
  proxy.resetForm("inventorytoolsRef");
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
  ids.value = selection.map(item => item.toolsId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加工具库存";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _toolsId = row.toolsId || ids.value
  getInventorytools(_toolsId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改工具库存";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["inventorytoolsRef"].validate(valid => {
    if (valid) {
      if (form.value.toolsId != null) {
        updateInventorytools(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addInventorytools(form.value).then(response => {
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
  const _toolsIds = row.toolsId || ids.value;
  proxy.$modal.confirm('是否确认删除工具库存编号为"' + _toolsIds + '"的数据项？').then(function() {
    return delInventorytools(_toolsIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('inventorytool/inventorytools/export', {
    ...queryParams.value
  }, `inventorytools_${new Date().getTime()}.xlsx`)
}



/*以上为药品管理，以下为对冲功能*/ 
import { addOffsettings, updateOffsettings } from "@/api/offsetting/offsettings";

const openoffsetting = ref(false);


const data_offsetting = reactive({
  form_off: {},
  queryParams_off: {
    pageNum: 1,
    pageSize: 10,
    itemName: null,
    responsible: null,
    offsettingTime: null,
  },
  rules_off: {
    itemName: [
      { required: true, message: "物品名字不能为空", trigger: "blur" }
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

const { queryParams_off, form_off, rules_off } = toRefs(data_offsetting);





/** 新增按钮操作 */
function handleAdd_off() {
  
  openoffsetting.value = true;
  title.value = "添加对冲记录工单";
}


/** 提交按钮 */
function submitForm_off() {
  proxy.$refs["offsettingsRef"].validate(valid => {
    
        addOffsettings(form_off.value).then(response => {
          proxy.$modal.msgSuccess("对冲成功");
          openoffsetting.value = false;
          
        });
      
    }
  );
}
getList();
</script>
