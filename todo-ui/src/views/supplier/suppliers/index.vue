<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="供应商名称" prop="supplierName">
        <el-input v-model="queryParams.supplierName" placeholder="请输入供应商名称" clearable @keyup.enter="handleQuery" />
      </el-form-item>

      <el-form-item label="供应商电话" prop="supplierPhone">
        <el-input v-model="queryParams.supplierPhone" placeholder="请输入供应商电话" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="联系人" prop="contact">
        <el-input v-model="queryParams.contact" placeholder="请输入联系人" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd_supplier"
          v-hasPermi="['supplier:suppliers:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['supplier:suppliers:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['supplier:suppliers:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['supplier:suppliers:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="suppliersList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="供应商ID" align="center" prop="supplierId" />
      <el-table-column label="供应商名称" align="center" prop="supplierName" width="180" />
      <el-table-column label="供应商备注" align="center" prop="supplierRemark" width="180" />

      <el-table-column label="供应商电话" align="center" prop="supplierPhone" width="180" />
      <el-table-column label="备用电话" align="center" prop="supplierPhone2" width="180" />
      <el-table-column label="供应商地址" align="center" prop="supplierAddress" width="180" />
      <el-table-column label="邮政编码" align="center" prop="supplierPost" />
      <el-table-column label="邮箱地址" align="center" prop="mail" />
      <el-table-column label="联系人" align="center" prop="contact" />
      <el-table-column label="信用度" align="center" prop="creditworthiness" />
      <el-table-column label="创建时间" align="center" prop="creatTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.creatTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新时间" align="center" prop="updateTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updateTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['supplier:suppliers:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['supplier:suppliers:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize" @pagination="getList" />

    <!-- 添加或修改供应商列表对话框 -->
    <el-dialog :title="title" v-model="opensupplier" width="500px" append-to-body>
      <el-form ref="suppliersRef" :model="form_supplier" :rules="rules_supplier" label-width="120px">
        <el-form-item label="供应商名称" prop="supplierName">
          <el-input v-model="form_supplier.supplierName" placeholder="请输入供应商名称" />
        </el-form-item>
        <el-form-item label="供应商备注" prop="supplierRemark">
          <el-input v-model="form_supplier.supplierRemark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="可信度" prop="creditworthiness">
          <el-select v-model="form_supplier.creditworthiness" placeholder="请选择">
            <el-option v-for="option in creditworthinessOptions" :key="option.id" :label="option.value"
              :value="option.value"></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="供应商电话" prop="supplierPhone">
          <el-input v-model="form_supplier.supplierPhone" placeholder="请输入供应商电话" />
        </el-form-item>
        <el-form-item label="备用电话" prop="supplierPhone2">
          <el-input v-model="form_supplier.supplierPhone2" placeholder="请输入备用电话" />
        </el-form-item>
        <el-form-item label="供应商地址" prop="supplierAddress">
          <el-input v-model="form_supplier.supplierAddress" placeholder="请输入供应商地址" />
        </el-form-item>
        <el-form-item label="邮政编码" prop="supplierPost">
          <el-input v-model="form_supplier.supplierPost" placeholder="请输入邮政编码" />
        </el-form-item>
        <el-form-item label="邮箱地址" prop="mail">
          <el-input v-model="form_supplier.mail" placeholder="请输入邮箱地址" />
        </el-form-item>
        <el-form-item label="联系人" prop="contact">
          <el-input v-model="form_supplier.contact" placeholder="请输入联系人" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_supplier">确 定</el-button>
          <el-button @click="cancel_supplier">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Suppliers">
import { listSuppliers, getSuppliers, delSuppliers, addSuppliers, updateSuppliers } from "@/api/supplier/suppliers";

const { proxy } = getCurrentInstance();

const suppliersList = ref([]);
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
    supplierName: null,
    supplierPhone: null,
    contact: null,
    creditworthiness: null,
  },
  rules: {
    supplierName: [
      { required: true, message: "供应商名称不能为空", trigger: "blur" }
    ],
    creditworthiness: [
      { required: true, message: "信用度不能为空", trigger: "change" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询供应商列表列表 */
function getList() {
  loading.value = true;
  listSuppliers(queryParams.value).then(response => {
    suppliersList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}



// 表单重置
function reset_supplier() {
  form_supplier.value = {
    supplierId: null,
    supplierName: null,
    supplierRemark: null,
    itemId: null,
    itemName: null,
    itemRemark: null,
    supplierPhone: null,
    supplierPhone2: null,
    supplierAddress: null,
    supplierPost: null,
    mail: null,
    contact: null,
    creditworthiness: "未知",
    creatTime: null,
    updateTime: null,

  };
  proxy.resetForm("suppliersRef");
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
  ids.value = selection.map(item => item.supplierId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}






/** 删除按钮操作 */
function handleDelete(row) {
  const _supplierIds = row.supplierId || ids.value;
  proxy.$modal.confirm('是否确认删除供应商列表编号为"' + _supplierIds + '"的数据项？').then(function () {
    return delSuppliers(_supplierIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => { });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('supplier/suppliers/export', {
    ...queryParams.value
  }, `suppliers_${new Date().getTime()}.xlsx`)
}



const data_supplier = reactive({
  form_supplier: {
    creditworthiness: null, // 绑定的值
  },
  queryParams_supplier: {
    pageNum: 1,
    pageSize: 10,
    supplierName: null,
    itemName: null,
    supplierPhone: null,
    contact: null,
    creditworthiness: null,
  },

  rules_supplier: {
    supplierName: [
      { required: true, message: "供应商名称不能为空", trigger: "blur" }
    ],
    itemId: [
      { required: true, message: "供应货物ID不能为空", trigger: "blur" }
    ],
    itemName: [
      { required: true, message: "供应货物名称不能为空", trigger: "blur" }
    ],
    creditworthiness: [
      { required: true, message: "信用度不能为空", trigger: "change" }
    ],
  }
});
const { queryParams_supplier, form_supplier, rules_supplier } = toRefs(data_supplier);


const creditworthinessOptions = reactive([
  { id: 1, value: "未知" },
  { id: 2, value: "差" },
  { id: 3, value: "一般" },
  { id: 4, value: "较好" },
  { id: 5, value: "特别好" },
]);



//新增供应商评价
const opensupplier = ref(false);

// 取消按钮
function cancel_supplier() {
  opensupplier.value = false;
  reset_supplier();
}

/** 新增按钮操作 */
function handleAdd_supplier() {
  reset_supplier();
  opensupplier.value = true;
  title.value = "添加供应商列表";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset_supplier();
  const _supplierId = row.supplierId || ids.value
  getSuppliers(_supplierId).then(response => {
    form_supplier.value = response.data;
    opensupplier.value = true;
    title.value = "修改供应商列表";
  });
}

/** 提交按钮 */
function submitForm_supplier() {
  proxy.$refs["suppliersRef"].validate((valid) => {
    if (valid) {
      if (form_supplier.value.supplierId != null) {
        updateSuppliers(form_supplier.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          opensupplier.value = false;
         getList();
        });
      }
    } else {
      addSuppliers(form_supplier.value).then((response) => {
        getSupplierList();
        proxy.$modal.msgSuccess("新增供应商成功");
        opensupplier.value = false;
      }
      );


    }
  }
  )
};

getList();
</script>
