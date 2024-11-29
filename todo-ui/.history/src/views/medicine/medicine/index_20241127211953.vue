<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="药品名称" prop="medicineName">
        <el-input v-model="queryParams.medicineName" placeholder="请输入药品名称" clearable @keyup.enter="handleQuery" />
      </el-form-item>

      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>


      </el-form-item>
    </el-form>
    <span
      style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: red;">注意：若要增加新药品，请先通过"新建"按钮增加种类，然后再通过"入库"按钮设置数量</span>
    <el-row :gutter="10" class="mb8" style="margin-top: 20px;">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd"
          v-hasPermi="['medicine:medicine:add']">新增</el-button>
      </el-col>

      <el-button color="#626aef" :dark="isDark" icon="Edit" @click="handleAdd_inbounds"
        v-hasPermi="['offsetting:offsettings:add']">入库</el-button>

      <el-button type="info" icon="Edit" @click="handleAdd_outbounds"
        v-hasPermi="['offsetting:offsettings:add']">出库</el-button>

      <el-button type="warning" icon="Edit" @click="handleAdd_off"
        v-hasPermi="['offsetting:offsettings:add']">对冲</el-button>

      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate"
          v-hasPermi="['medicine:medicine:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete"
          v-hasPermi="['medicine:medicine:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport"
          v-hasPermi="['medicine:medicine:export']">导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="medicineList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="药品号" align="center" prop="medicineId" />
      <el-table-column label="药品名称" align="center" prop="medicineName" />
      <el-table-column label="药品描述" align="center" prop="medicineDescription" width="180" />
      <el-table-column label="查看详情" align="center" width="100">
        <template #default="scope">
          <el-button type="primary" @click="handleView_supplier(scope.row)">
            查看详情</el-button>

        </template>
      </el-table-column>
      <el-table-column label="售价" align="center" prop="sellingPrice" width="180">
        <template #default="scope">
          <span>￥{{ scope.row.sellingPrice }}</span>
        </template>
      </el-table-column>
      <el-table-column label="库存数量" align="center" prop="quantity" />
      <el-table-column label="计量单位" align="center" prop="unit" />

      <el-table-column label="创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width" width="180">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['medicine:medicine:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['medicine:medicine:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize" @pagination="getList" />

    <!-- 添加药品库存对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="medicineRef" :model="form" :rules="rules" label-width="80px">

        <el-form-item label="药品名称" prop="medicineName">
          <el-input v-model="form.medicineName" placeholder="请输入药品名称" />
        </el-form-item>
        <el-form-item label="剂量单位" prop="unit">
          <el-input v-model="form.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="药品描述" prop="medicineDescription">
          <el-input v-model="form.medicineDescription" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="售价" prop="sellingPrice">
          <el-input v-model="form.sellingPrice" placeholder="请输入售价" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <!--以上为药品，以下为对冲弹窗-->

    <!-- 添加对冲记录工单对话框 -->
    <el-dialog :title="title" v-model="openoffsetting" width="500px" append-to-body>
      <el-form ref="offsettingsRef" :model="form_off" :rules="rules_off" label-width="80px">
        <el-form-item label="物品ID" prop="itemId">
          <el-input v-model="form_off.itemId" placeholder="请输入物品ID" />
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
          <el-date-picker clearable v-model="form_off.offsettingTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择对冲时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_off">确 定</el-button>
          <el-button @click="cancel_off">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <!--以上为药品，对冲，以下为入库弹窗-->
    <!-- 添加或修改入库工单对话框 -->
    <el-dialog :title="title" v-model="openinbounds" width="500px" append-to-body>
      <el-form ref="inboundsRef" :model="form_inbounds" :rules="rules_inbounds" label-width="100px">
        <el-form-item label="入库货物ID" prop="itemId">
          <el-input v-model="form_inbounds.itemId" placeholder="请输入入库货物ID" />
        </el-form-item>
        <el-form-item label="物品名字" prop="itemId">
          <el-input v-model="form_inbounds.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form_inbounds.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="供应来源" prop="supplier">
          <el-select v-model="form_inbounds.supplier" placeholder="请选择供应来源">
            <el-option v-for="option in supplierOptions" :key="option.key"
              :label="`供应商ID：${option.key}    ,    供应商：${option.label}`" :value="option.label"></el-option>
          </el-select>
        </el-form-item>


        <el-form-item label="入库数量" prop="quantity">
          <el-input v-model="form_inbounds.quantity" placeholder="请输入入库数量" />
        </el-form-item>

        <el-form-item label="进价" prop="purchasePrice">
          <el-input v-model="form_inbounds.purchasePrice" placeholder="请输入进价" />
        </el-form-item>
        <el-form-item label="运费" prop="freight">
          <el-input v-model="form_inbounds.freight" placeholder="请输入运费" />
        </el-form-item>
        <el-form-item label="总开销" prop="spending">
          <el-input v-model="form_inbounds.spending" placeholder="此处自动计算总开销" readonly />
        </el-form-item>
        <el-form-item label="入库时间" prop="inboundTime">
          <el-date-picker clearable v-model="form_inbounds.inboundTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择入库时间">
          </el-date-picker>
        </el-form-item>
        <!-- <el-form-item label="保质期" prop="dateRange">
          <el-date-picker v-model="dateRange" type="daterange" range-separator="To" start-placeholder="Start date"
            end-placeholder="End date" :size="size" />
        </el-form-item> -->
        <el-form-item label="保质期" prop="dateRange2">
          <el-date-picker v-model="dateRange2" type="monthrange" range-separator="To" start-placeholder="Start month"
            end-placeholder="End month" />
        </el-form-item>

      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="handleAdd_supplier">添加供应商</el-button>
          <el-button type=" primary" @click="submitForm_inb">确 定</el-button>
          <el-button @click="cancel_inb">取 消</el-button>
        </div>
      </template>
    </el-dialog>




    <!--以上为药品，对冲，入库，以下为出库弹窗-->
    <!-- 添加出库工单对话框 -->
    <el-dialog :title="title" v-model="openoutbounds" width="500px" append-to-body>
      <el-form ref="outboundsRef" :model="form_outbounds" :rules="rules_outbounds" label-width="100px">
        <el-form-item label="出库货物ID" prop="itemId">
          <el-input v-model="form_outbounds.itemId" placeholder="请输入出库货物ID" />
        </el-form-item>
        <el-form-item label="物品名字" prop="itemName">
          <el-input v-model="form_outbounds.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form_outbounds.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="出库数量" prop="quantity">
          <el-input v-model="form_outbounds.quantity" placeholder="请输入入库数量" />
        </el-form-item>
        <el-form-item label="计量单位" prop="unit">
          <el-input v-model="form_outbounds.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="总开销" prop="spending">
          <el-input v-model="form_outbounds.spending" placeholder="请输入总开销" />
        </el-form-item>
        <el-form-item label="开销原因" prop="expensesReason">
          <el-input v-model="form_outbounds.expensesReason" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="出库时间" prop="outboundTime">
          <el-date-picker clearable v-model="form_outbounds.outboundTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择入库时间">
          </el-date-picker>
        </el-form-item>

      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_out">确 定</el-button>
          <el-button @click="cancel_out">取 消</el-button>
        </div>
      </template>
    </el-dialog>



    <!--以上为药品，对冲，入库，出库，以下为新增供应商弹窗---->

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
          <el-select v-model="form_supplier.creditworthiness" placeholder="请选择" @change="handleChange">
            <el-option v-for="option in creditworthinessOptions" :key="option.id" :label="option.value"
              :value="option.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="供应货物ID" prop="itemId">
          <el-input v-model="form_supplier.itemId" placeholder="请输入供应货物ID" />
        </el-form-item>
        <el-form-item label="供应货物名称" prop="itemName">
          <el-input v-model="form_supplier.itemName" placeholder="请输入供应货物名称" />
        </el-form-item>
        <el-form-item label="货物备注" prop="itemRemark">
          <el-input v-model="form_supplier.itemRemark" type="textarea" placeholder="请输入内容" />
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


    <!-- 以下为查看供应商详情 -->
    <el-dialog :title="title" v-model="open_supplier" width="90%">
      <el-table v-loading="loading" :data="suppliersList" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55" align="center" />
        <el-table-column label="供应商ID" align="center" prop="supplierId" />
        <el-table-column label="供应商名称" align="center" prop="supplierName" width="180" />
        <el-table-column label="供应商备注" align="center" prop="supplierRemark" width="180" />
        <el-table-column label="供应货物ID" align="center" prop="itemId" width="180" />
        <el-table-column label="供应货物名称" align="center" prop="itemName" width="180" />
        <el-table-column label="货物备注" align="center" prop="itemRemark" />
        <el-table-column label="供应商电话" align="center" prop="supplierPhone" width="180" />
        <el-table-column label="备用电话" align="center" prop="supplierPhone2" width="180" />
        <el-table-column label="供应商地址" align="center" prop="supplierAddress" width="180" />
        <el-table-column label="邮政编码" align="center" prop="supplierPost" />
        <el-table-column label="邮箱地址" align="center" prop="mail" />
        <el-table-column label="联系人" align="center" prop="Contact" />
        <el-table-column label="信用度" align="center" prop="Creditworthiness" />
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
    </el-dialog>

  </div>
</template>

<script setup name="Medicine">
import { watch } from 'vue';
import {
  listMedicine,
  getMedicine,
  delMedicine,
  addMedicine,
  updateMedicine,
  offsettingUpdateMedicine,
  inboundUpdateMedicine,
  outboundUpdateMedicine

} from "@/api/medicine/medicine";

import {
  formatPriceToLong,
  formatPriceToDecimal
} from "@/utils/price";
const { proxy } = getCurrentInstance();

const medicineList = ref([]);
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
    medicineName: null,
    supplier: null,
  },
  rules: {
    medicineName: [
      { required: true, message: "药品名称不能为空", trigger: "blur" },
    ],
    quantity: [
      { required: true, message: "库存数量不能为空", trigger: "blur" },
    ],
    unit: [{ required: true, message: "计量单位不能为空", trigger: "blur" }],
  },
});

const { queryParams, form, rules } = toRefs(data);

/** 查询药品库存列表 */
function getList() {
  loading.value = true;
  listMedicine(queryParams.value).then((response) => {
    response.rows.forEach((item) => {
      item.purchasePrice = formatPriceToDecimal(item.purchasePrice);
      item.sellingPrice = formatPriceToDecimal(item.sellingPrice);
      // item.purchasePrice = (item.purchasePrice / 100).toFixed(2);
      // item.sellingPrice = (item.sellingPrice / 100).toFixed(2);
    })
    medicineList.value = response.rows;
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
    medicineId: null,
    medicineName: null,
    medicineDescription: null,
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
    updatedAt: null,
  };
  proxy.resetForm("medicineRef");
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
  ids.value = selection.map((item) => item.medicineId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加药品库存";
}



/** 提交按钮 */
function submitForm() {
  proxy.$refs["medicineRef"].validate((valid) => {
    if (valid) {
      if (form.value.medicineId != null) {
        updateMedicine(form.value).then((response) => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        form.value.sellingPrice = formatPriceToLong(form.value.sellingPrice);
        addMedicine(form.value).then((response) => {

          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  }
  );
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _medicineIds = row.medicineId || ids.value;
  proxy.$modal
    .confirm('是否确认删除药品库存编号为"' + _medicineIds + '"的数据项？')
    .then(function () {
      return delMedicine(_medicineIds);
    })
    .then(() => {
      getList();
      proxy.$modal.msgSuccess("删除成功");
    })
    .catch(() => { });
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download(
    "medicine/medicine/export",
    {
      ...queryParams.value,
    },
    `medicine_${new Date().getTime()}.xlsx`
  );
}

/*以上为药品管理，以下为对冲功能*/
import {
  addOffsettings,

} from "@/api/offsetting/offsettings";

const openoffsetting = ref(false);

const data_offsetting = reactive({
  form_off: {},
  queryParams_off: {
    pageNum: 1,
    pageSize: 10,
    itemId: null,
    responsible: null,
    offsettingTime: null,
  },
  rules_off: {
    itemId: [
      { required: true, message: "物品ID不能为空", trigger: "blur" },
    ],

    responsible: [
      { required: true, message: "负责人不能为空", trigger: "blur" },
    ],
    reason: [{ required: true, message: "对冲原因不能为空", trigger: "blur" }],
    quantity: [
      { required: true, message: "对冲数量不能为空", trigger: "blur" },
    ],
    unit: [{ required: true, message: "剂量单位不能为空", trigger: "blur" }],
  },
});

const { queryParams_off, form_off, rules_off } = toRefs(data_offsetting);
/** 新增按钮操作 */
function handleAdd_off() {
  openoffsetting.value = true;
  title.value = "添加对冲记录工单";
}

/** 提交按钮 */
function submitForm_off() {

  proxy.$refs["offsettingsRef"].validate((valid) => {
    form_off.value.spending = formatPriceToLong(form_off.value.spending);
    offsettingUpdateMedicine(form_off.value).then((response) => {
      proxy.$modal.msgSuccess("已成功修正库存数目");
      openoffsetting.value = false;
      addOffsettings(form_off.value).then((response) => {
        proxy.$modal.msgSuccess("对冲成功");
        openoffsetting.value = false;
      });
      getList();

    }, (error) => {
      proxy.$modal.msgError(error.values[0].message);
    }
    );

  });
}
// 取消按钮
function cancel_off() {
  openoffsetting.value = false;
}

/*以上为药品管理,对冲功能，以下为入库功能*/

import {
  addInbounds,

} from "@/api/inbound/inbounds";

const openinbounds = ref(false);

const data_inbounds = reactive({
  form_inbounds: {},
  queryParams_inbounds: {
    pageNum: 1,
    pageSize: 10,
    itemName: null,
    responsible: null,
    supplier: null,
    inboundTime: null,
  },
  rules_inbounds: {
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
    inboundTime: [
      { required: true, message: "入库时间不能为空", trigger: "blur" }
    ],
    dateRange2: [
      { required: true, message: "保质期不能为空", trigger: "blur" }
    ],

  }
});

// 从 data_inbounds 中解构出 form_inbounds

const { form_inbounds, rules_inbounds } = toRefs(data_inbounds);

// 计算总开销
const calculateSpending = (quantity, purchasePrice, freight) => {
  // 确保所有输入都是数字，如果为 null 或 undefined，则使用 0 作为默认值
  quantity = parseFloat(quantity) || 0;
  purchasePrice = parseFloat(purchasePrice) || 0;
  freight = parseFloat(freight) || 0;

  if ((quantity) && (purchasePrice) && (freight)) {
    return ((quantity * purchasePrice + freight));
  }
  return null;
};

watch(form_inbounds, (newVal, oldVal) => {
  const hasValues = Object.values(newVal).some(value => (value !== null && value !== undefined && value !== ""));

  if (hasValues) {
    form_inbounds.value.spending = calculateSpending(
      form_inbounds.value.quantity,
      form_inbounds.value.purchasePrice,
      form_inbounds.value.freight
    );
  }
}, { deep: true, immediate: true });




//设置时间范围数组，用于选择时间范围
const dateRange2 = ref([]);
// 监听 dateRange 的变化
watch(dateRange2, (newVal) => {
  if (newVal && newVal.length === 2) {
    data_inbounds.form_inbounds.manufactureDate = newVal[0];
    data_inbounds.form_inbounds.expirationDate = newVal[1];

    // 计算保质期
    const startDate = new Date(newVal[0]);
    const endDate = new Date(newVal[1]);
    const yearsDifference = endDate.getFullYear() - startDate.getFullYear();
    const monthsDifference = endDate.getMonth() - startDate.getMonth();
    const totalMonthsDifference = yearsDifference * 12 + monthsDifference;

    data_inbounds.form_inbounds.shelfLife = totalMonthsDifference;

  } else {
    data_inbounds.form_inbounds.manufactureDate = '';
    data_inbounds.form_inbounds.expirationDate = '';
    data_inbounds.form_inbounds.shelfLife = '';
  }
});





// 表单重置
function reset_inbounds() {
  form_inbounds.value = {
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
    updateTime: null,
    dateRange2: null,
  };
  proxy.resetForm("inboundsRef");
}

/** 入库按钮操作 */
function handleAdd_inbounds() {
  reset_inbounds();
  openinbounds.value = true;
  title.value = "入库工单";
}

/** 入库表单提交按钮 */
function submitForm_inb() {

  proxy.$refs["inboundsRef"].validate((valid) => {
    //将价格的decimal转换为long
    form_inbounds.value.purchasePrice = formatPriceToLong(form_inbounds.value.purchasePrice);
    form_inbounds.value.freight = formatPriceToLong(form_inbounds.value.freight);
    form_inbounds.value.spending = formatPriceToLong(form_inbounds.value.spending);
    console.log(form_inbounds.value);
    inboundUpdateMedicine(form_inbounds.value).then((response) => {
      proxy.$modal.msgSuccess("入库成功");
      openinbounds.value = false;
      addInbounds(form_inbounds.value).then((response) => {
        proxy.$modal.msgSuccess("入库工单生成成功");
        openinbounds.value = false;
      });
      getList();
    }, (error) => {
      proxy.$modal.msgError(error.values[0].message);
    }
    );

  });
}
// 取消按钮
function cancel_inb() {
  openinbounds.value = false;
}



/*以上为药品管理,对冲功能,入库功能，以下为出库功能*/


import {
  addOutbounds,
} from "@/api/outbound/outbounds";

const openoutbounds = ref(false);

const data_outbounds = reactive({
  form_outbounds: {},
  queryParams_outbounds: {
    pageNum: 1,
    pageSize: 10,
    itemId: null,
    itemName: null,
    responsible: null,
    outboundTime: null,
  },
  rules_outbounds: {
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

// 表单重置
function reset_outbounds() {
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

const { form_outbounds, rules_outbounds } = toRefs(data_outbounds);
/** 出库按钮操作 */
function handleAdd_outbounds() {
  reset_outbounds();
  openoutbounds.value = true;
  title.value = "出库工单";
}

/** 出库表单提交按钮 */
function submitForm_out() {

  proxy.$refs["outboundsRef"].validate((valid) => {
    //将价格的decimal转换为long

    form_outbounds.value.spending = formatPriceToLong(form_outbounds.value.spending);
    console.log(form_outbounds.value);
    outboundUpdateMedicine(form_outbounds.value).then((response) => {
      proxy.$modal.msgSuccess("出库成功");
      openoutbounds.value = false;
      addOutbounds(form_outbounds.value).then((response) => {
        proxy.$modal.msgSuccess("出库工单生成成功");
        openoutbounds.value = false;
      });
      getList();
    }, (error) => {
      proxy.$modal.msgError(error.values[0].message);
    }
    );

  });
}
// 取消按钮
function cancel_out() {
  openoutbounds.value = false;
}


//以下为查看供应商详情操作
const open_supplier = ref(false);



const suppliersList = ref([]);



import { getSupplierByMedicineId } from '@/api/supplier/suppliers'; // 假设这是你的API请求方法

// const data_supplierList = reactive({
//   form_supplierList: {},
//   rules_supplierList: {
//     pageNum: 1,
//     pageSize: 10,
//     supplierName: null,
//     itemName: null,
//     supplierPhone: null,
//     contact: null,
//     creditworthiness: null,
//   },

// });

//表单重置
function reset_supplierById() {
  form_supplier.value = {
    supplierId: null,
    supplierName: null, // 绑定的值
    supplierPhone: null,
    contact: null,
    creditworthiness: null,
  };
  proxy.resetForm("supplierRef");
}

// const { form_supplierList, rules_supplierList } = toRefs(data_supplierList);
/** 查看供应商详情按钮操作 */
function handleView_supplier(row) {
  reset_supplierById();
  console.log("第几列:",row);
  const MedicineId = row.medicineId || 0; //供应商id
  open_supplier.value = true;
  title.value = "供应商详情";
  loading.value = true;
  getSupplierByMedicineId(MedicineId).then((response) => {
    suppliersList.value = response.data;
    console.log("response:",response);
    console.log("suppliersList.value:",suppliersList.value);
    
    loading.value = false;
  });;
}





//以下为新增供应商操作


import { addSuppliers, listSuppliers } from "@/api/supplier/suppliers";


//查询供应商列表，获得供应商名字和id供选择
const supplierList = ref([]);
const supplierOptions = ref([]);
const getSupplierList = () => {
  listSuppliers().then((response) => {
    supplierList.value = response.rows;
    supplierOptions.value = supplierList.value.map(item => ({
      key: item.supplierId,
      value: item.supplierId,
      label: item.supplierName
    }));
  });
};
getSupplierList();





//新增供应商评价
const opensupplier = ref(false);

const creditworthinessOptions = reactive([
  { id: 1, value: "未知" },
  { id: 2, value: "差" },
  { id: 3, value: "一般" },
  { id: 4, value: "较好" },
  { id: 5, value: "特别好" },
]);


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

// 取消按钮
function cancel_supplier() {
  opensupplier.value = false;
  reset();
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


/** 新增按钮操作 */
function handleAdd_supplier() {
  reset_supplier();
  opensupplier.value = true;
  title.value = "添加供应商列表";
}

function handleChange(value) {

}

/** 提交按钮 */
function submitForm_supplier() {
  proxy.$refs["suppliersRef"].validate(valid => {

    addSuppliers(form_supplier.value).then(response => {
      console.log('form_supplier.value', form_supplier.value)
      console.log(form_supplier.value.creditworthiness)
      proxy.$modal.msgSuccess("新增供应商成功");
      opensupplier.value = false;

    });


  });
}


getList();
</script>
