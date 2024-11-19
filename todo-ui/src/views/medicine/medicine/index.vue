<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="药品名称" prop="medicineName">
        <el-input v-model="queryParams.medicineName" placeholder="请输入药品名称" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="供应商" prop="supplier">
        <el-input v-model="queryParams.supplier" placeholder="请输入供应商" clearable @keyup.enter="handleQuery" />
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

      <el-button type="info" icon="Edit" @click="handleAdd_off"
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
      <el-table-column label="供应商" align="center" prop="supplier" width="180" />
      <el-table-column label="进价" align="center" prop="purchasePrice" />
      <el-table-column label="售价" align="center" prop="sellingPrice" />
      <el-table-column label="库存数量" align="center" prop="quantity" />
      <el-table-column label="计量单位" align="center" prop="unit" />
      <el-table-column label="生产日期" align="center" prop="manufactureDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.manufactureDate, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
      <el-table-column label="保质期" align="center" prop="shelfLife" />
      <el-table-column label="过期日期" align="center" prop="expirationDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.expirationDate, "{y}-{m}-{d}") }}</span>
        </template>
      </el-table-column>
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
        <el-form-item label="物品名字" prop="itemName">
          <el-input v-model="form_inbounds.itemName" placeholder="请输入物品名字" />
        </el-form-item>
        <el-form-item label="负责人" prop="responsible">
          <el-input v-model="form_inbounds.responsible" placeholder="请输入负责人" />
        </el-form-item>
        <el-form-item label="供应来源" prop="supplier">
          <el-input v-model="form_inbounds.supplier" placeholder="请输入供应来源" />
        </el-form-item>
        <el-form-item label="入库数量" prop="quantity">
          <el-input v-model="form_inbounds.quantity" placeholder="请输入入库数量" />
        </el-form-item>
        <el-form-item label="剂量单位" prop="unit">
          <el-input v-model="form_inbounds.unit" placeholder="请输入剂量单位" />
        </el-form-item>
        <el-form-item label="进价" prop="purchasePrice">
          <el-input v-model="form_inbounds.purchasePrice" placeholder="请输入进价" />
        </el-form-item>
        <el-form-item label="运费" prop="freight">
          <el-input v-model="form_inbounds.freight" placeholder="请输入运费" />
        </el-form-item>
        <el-form-item label="总开销" prop="spending">
          <el-input v-model="form_inbounds.spending" placeholder="请输入总开销" />
        </el-form-item>
        <el-form-item label="入库时间" prop="inboundTime">
          <el-date-picker clearable v-model="form_inbounds.inboundTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择入库时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="生产日期" prop="manufactureDate">
          <el-date-picker clearable v-model="form_inbounds.manufactureDate" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="保质期" prop="shelfLife">
          <el-input v-model="form_inbounds.shelfLife" placeholder="请输入保质期" />
        </el-form-item>
        <el-form-item label="过期日期" prop="expirationDate">
          <el-date-picker clearable v-model="form_inbounds.expirationDate" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择过期日期">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_inb">确 定</el-button>
          <el-button @click="cancel_inb">取 消</el-button>
        </div>
      </template>
    </el-dialog>


  </div>
</template>

<script setup name="Medicine">
import {
  listMedicine,
  getMedicine,
  delMedicine,
  addMedicine,
  updateMedicine,
  offsettingUpdateMedicine,
  inboundUpdateMedicine

} from "@/api/medicine/medicine";

import{
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
        
        // let sellingPriceStr = form.value.sellingPrice.toString();

        // // 分割字符串，获取整数部分和小数部分
        // let parts = sellingPriceStr.split('.');

        // // 如果有小数部分，则将整数部分和小数部分拼接起来
        // if (parts.length > 1) {
        //   let integerPart = parts[0];
        //   let decimalPart = parts[1];

        //   // 将小数部分扩展到三位，确保精度
        //   decimalPart = decimalPart.padEnd(2, '0');

        //   // 拼接整数部分和小数部分
        //   let combined = integerPart + decimalPart;

        //   // 将结果转换为 long 类型
        //   form.value.sellingPrice = parseInt(combined, 10);
        // }


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
    });

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

// 表单重置
function reset_inbounds() {
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

const { form_inbounds, rules_inbounds } = toRefs(data_inbounds);
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
    });

  });
}
// 取消按钮
function cancel_inb() {
  openinbounds.value = false;
}
getList();
</script>
