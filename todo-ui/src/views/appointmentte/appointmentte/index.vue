<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryRef"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="患者姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入患者姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorName">
        <el-select
          v-model="queryParams.doctorName"
          placeholder="请选择医生姓名"
          clearable
        >
          <el-option
            v-for="dict in tt_doctor"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="创建时间" style="width: 308px">
        <el-date-picker v-model="dateRange" value-format="YYYY-MM-DD" type="daterange" range-separator="-"
          start-placeholder="开始日期" end-placeholder="结束日期"></el-date-picker>
      </el-form-item>

      <el-form-item label="预约项目" prop="appointmentProject">
        <el-select v-model="queryParams.appointmentProject" placeholder="请选择预约的项目" clearable>
          <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="预约状态" prop="appointmentStatus">
        <el-select
          v-model="queryParams.appointmentStatus"
          placeholder="请选择预约状态"
          clearable
        >
          <el-option
            v-for="dict in tt_appointments_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd" v-hasPermi="['appointmentte:appointmentte:add']">
          新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['appointmentte:appointmentte:edit']"
          >修改</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['appointmentte:appointmentte:remove']"
          >删除</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['appointmentte:appointmentte:export']"
          >导出</el-button
        >
      </el-col>
      <right-toolbar
        v-model:showSearch="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="appointmentteList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="预约唯一ID" align="center" prop="appointmentId" />
      <el-table-column label="患者ID" align="center" prop="patientId" />
      <el-table-column label="医生ID" align="center" prop="doctorId" /> -->
      <el-table-column label="患者姓名" align="center" prop="patientName" />
      <el-table-column label="医生姓名" align="center" prop="doctorName">

      </el-table-column>
      <el-table-column
        label="患者联系方式"
        align="center"
        prop="patientPhone"
      />
      <el-table-column
        label="预约开始时间"
        align="center"
        prop="appointmentStartTime"
        width="180"
      >
        <template #default="scope">
          <span>{{
            parseTime(scope.row.appointmentStartTime, "{y}-{m}-{d}  {h}:{i}:{s}")
          }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约时长" align="center" prop="partTime" />
      <!-- 
      <el-table-column label="预约结束时间" align="center" prop="appointmentEndTime" width="180">
        <template #default="scope">
          <span>{{
            parseTime(scope.row.appointmentEndTime, "{y}-{m}-{d}")
          }}</span>
        </template>
      </el-table-column> -->


      <el-table-column label="预约的项目" align="center" prop="appointmentProject">
        <template #default="scope">
          <dict-tag :options="tt_tooth" :value="scope.row.appointmentProject" />
        </template>
      </el-table-column>
      <el-table-column label="预约状态" align="center" prop="appointmentStatus">
        <template #default="scope">
          <dict-tag
            :options="tt_appointments_status"
            :value="scope.row.appointmentStatus"
          />
        </template>
      </el-table-column>
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)"
            v-hasPermi="['appointmentte:appointmentte:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)"
            v-hasPermi="['appointmentte:appointmentte:remove']">删除</el-button>
          <el-button type="primary" plain @click="handleAdd_billing(scope.row)" v-hasPermi="['billing:billing:add']"
            v-if="scope.row.appointmentStatus === '4'">
            <Icon icon="material-symbols:money-bag" /> 记账
          </el-button>
          <el-button type="primary" plain @click="handleAdd_records(scope.row)" v-hasPermi="['record:record:add']"
            v-if="scope.row.appointmentStatus === '3'">
            <Icon icon="material-symbols:money-bag" /> 新增就诊记录
          </el-button>
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

    <!-- 添加或修改预约测试对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="appointmentteRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="doctorName">
          <el-select v-model="form.doctorName" placeholder="请输入医生姓名">
            <el-option v-for="option in docterOptions" :key="option.key" :label="`医生:${option.label},${option.phone}`"
              :value="option.label"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="联系方式" prop="patientPhone">
          <el-input v-model="form.patientPhone" placeholder="请输入患者联系方式" />
        </el-form-item>

        <!-- <el-form-item label="预约时间" prop="appointmentStartTime">
          <el-date-picker clearable v-model="form.appointmentStartTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择预约时间">
          </el-date-picker>
        </el-form-item> -->

        <el-form-item label="预约时间" prop="appointmentStartTime">
          <el-date-picker clearable v-model="form.appointmentStartTime" type="datetime"
            value-format="YYYY-MM-DD HH:mm:ss" placeholder="请选择预约时间">
          </el-date-picker>
        </el-form-item>

        <el-form-item label="预约时长" prop="partTime">
          <el-input v-model="form.partTime" placeholder="请输入预约时长" />
        </el-form-item>
        <!-- <el-form-item label="预约结束时间" prop="appointmentEndTime">
          <el-date-picker clearable v-model="form.appointmentEndTime" type="date" value-format="YYYY-MM-DD"
            placeholder="请选择预约开始时间">
          </el-date-picker>
        </el-form-item> -->
        <el-form-item label="预约项目" prop="appointmentProject">
          <el-select v-model="form.appointmentProject" placeholder="请选择预约的项目">
            <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="预约状态" prop="appointmentStatus">
          <el-select v-model="form.appointmentStatus" placeholder="请选择预约状态">
            <el-option v-for="dict in tt_appointments_status" :key="dict.value" :label="dict.label" :value="dict.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>

    <!-- 添加记账对话框 -->
    <el-dialog :title="title" v-model="openbilling" width="500px" append-to-body>
      <el-form ref="billingRef" :model="form_billing" :rules="rules_billing" label-width="80px">
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form_billing.patientName" placeholder="请输入患者姓名" disabled />
        </el-form-item>
        <el-form-item label="就诊医生" prop="doctorName">
          <el-input v-model="form_billing.doctorName" placeholder="请输入就诊医生" disabled />
        </el-form-item>
        <el-form-item label="账单日期" prop="billingDate">
          <el-date-picker v-model="form_billing.billingDate" value-format="YYYY-MM-DD HH:mm:ss" type="datetime"
            placeholder="选择日期时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="金额" prop="totalAmount">
          <el-input v-model="form_billing.totalAmount" placeholder="请输入金额" />
        </el-form-item>

        <el-form-item label="支付状态" prop="paymentStatus">
          <el-checkbox-group v-model="form_billing.paymentStatus">
            <el-checkbox v-for="dict in tt_paystatus" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>

        <el-form-item label="支付方式" prop="paymentMethod">
          <el-checkbox-group v-model="form_billing.paymentMethod">
            <el-checkbox v-for="dict in tt_paymethod" :key="dict.value" :label="dict.value">
              {{ dict.label }}
            </el-checkbox>
          </el-checkbox-group>
        </el-form-item>
        <el-form-item label="见证人" prop="receiver">
          <el-input v-model="form_billing.receiver" placeholder="请输入见证人" />
        </el-form-item>
        <el-form-item label="备注" prop="notes">
          <el-input v-model="form_billing.notes" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_off">确 定</el-button>
          <el-button @click="cancel_off">取 消</el-button>
        </div>
      </template>
    </el-dialog>


    <!-- 添加或修改就诊记录对话框 -->
    <el-dialog :title="title" v-model="open_records" width="500px" append-to-body>
      <el-form ref="recordsRef" :model="form" :rules="rules" label-width="80px">
        <!-- <el-form-item label="患者ID" prop="patientId">
          <el-input v-model="form_records.patientId" placeholder="请输入患者ID" />
        </el-form-item> -->
        <el-form-item label="患者姓名" prop="patientName">
          <el-input v-model="form_records.patientName" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="doctorName">
          <el-select v-model="form_records.doctorName" placeholder="请输入医生姓名">
            <el-option v-for="option in docterOptions" :key="option.key" :label="`医生:${option.label},${option.phone}`"
              :value="option.label"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="就诊方式" prop="treatmentType">
          <el-input v-model="form_records.treatmentType" type="textarea" placeholder="请输入内容" />
        </el-form-item>

        <el-form-item label="主诉" prop="maincase">
          <el-input v-model="form_records.maincase" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="就诊状态" prop="medicalRecordsStatue">
          <el-select v-model="form_records.medicalRecordsStatue" placeholder="请选择预约状态">
            <el-option v-for="dict in tt_paystatus" :key="dict.value" :label="dict.label" :value="dict.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="治疗结果" prop="clinicalResults">
          <el-input v-model="form_records.clinicalResults" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm_records">确 定</el-button>
          <el-button @click="cancel_off_records">取 消</el-button>
        </div>
      </template>
    </el-dialog>

  </div>
</template>

<script setup name="Appointmentte">
  import {
    listAppointmentte,
    getAppointmentte,
    delAppointmentte,
    addAppointmentte,
    updateAppointmentte,
  } from "@/api/appointmentte/appointmentte";

  const {
    proxy
  } = getCurrentInstance();
  const {
    tt_doctor,
    tt_tooth,
    tt_appointments_status
  } = proxy.useDict(
    "tt_doctor",
    "tt_tooth",
    "tt_appointments_status"
  );
  const {
    tt_paymethod,
    tt_paystatus
  } = proxy.useDict('tt_paymethod', 'tt_paystatus');

  const dateRange = ref([]);
  const appointmentteList = ref([]);
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
      patientName: null,
      doctorName: null,
      appointmentStartTime: null,
      partTime: null,
      appointmentProject: null,
      appointmentEndTime: null,
      appointmentStatus: null,
    },
    rules: {
      patientName: [{
        required: true,
        message: "患者姓名不能为空",
        trigger: "blur"
      }, ],
      doctorName: [{
        required: true,
        message: "医生姓名不能为空",
        trigger: "change"
      }, ],
      patientPhone: [{
        required: true,
        message: "患者联系方式不能为空",
        trigger: "blur"
      }, ],
      appointmentStartTime: [{
        required: true,
        message: "预约开始时间不能为空",
        trigger: "blur"
      }, ],
      // appointmentEndTime: [{
      //   required: true,
      //   message: "预约开始时间不能为空",
      //   trigger: "blur"
      // }, ],
      appointmentProject: [{
        required: true,
        message: "预约的项目不能为空",
        trigger: "change"
      }, ],
    },
  });

  const {
    queryParams,
    form,
    rules
  } = toRefs(data);

  /** 查询预约测试列表 */
  function getList() {
    loading.value = true;
    listAppointmentte(proxy.addDateRange(queryParams.value, dateRange.value)).then((response) => {
      console.log(response);
      appointmentteList.value = response.rows;
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
      appointmentId: null,
      patientId: null,
      doctorId: null,
      patientName: null,
      doctorName: null,
      patientPhone: null,
      appointmentStartTime: null,
      partTime: null,
      appointmentEndTime: null,
      appointmentProject: null,
      appointmentStatus: null,
      createdAt: null,
      updatedAt: null,
      remark: null,
    };
    proxy.resetForm("appointmentteRef");
  }

  /** 搜索按钮操作 */
  function handleQuery() {
    queryParams.value.pageNum = 1;
    console.log(queryParams.value)
    getList();
  }

  /** 重置按钮操作 */
  function resetQuery() {
    dateRange.value = [];
    proxy.resetForm("queryRef");
    handleQuery();
  }

  // 多选框选中数据
  function handleSelectionChange(selection) {
    ids.value = selection.map((item) => item.appointmentId);
    single.value = selection.length != 1;
    multiple.value = !selection.length;
  }

  /** 新增按钮操作 */
  function handleAdd() {
    reset();
    open.value = true;
    title.value = "添加预约测试";
  }

  /** 修改按钮操作 */
  function handleUpdate(row) {
    reset();
    const _appointmentId = row.appointmentId || ids.value;
    getAppointmentte(_appointmentId).then((response) => {
      form.value = response.data;
      open.value = true;
      title.value = "修改预约测试";
    });
  }

  /** 提交按钮 */
  function submitForm() {
    proxy.$refs["appointmentteRef"].validate((valid) => {
      if (valid) {
        if (form.value.appointmentId != null) {
          updateAppointmentte(form.value).then((response) => {
            proxy.$modal.msgSuccess("修改成功");
            open.value = false;
            getList();
          });
        } else {
          addAppointmentte(form.value).then((response) => {
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
    const _appointmentIds = row.appointmentId || ids.value;
    proxy.$modal
      .confirm('是否确认删除预约测试编号为"' + _appointmentIds + '"的数据项？')
      .then(function () {
        return delAppointmentte(_appointmentIds);
      })
      .then(() => {
        getList();
        proxy.$modal.msgSuccess("删除成功");
      })
      .catch(() => {});
  }

  /** 导出按钮操作 */
  function handleExport() {
    proxy.download(
      "appointmentte/appointmentte/export", {
        ...queryParams.value,
      },
      `appointmentte_${new Date().getTime()}.xlsx`
    );
  }

  // 入账功能
  import {
    addBilling
  } from "@/api/billing/billing";
  const openbilling = ref(false);
  const data_billing = reactive({
    form_billing: {},
    queryParams_biling: {
      pageNum: 1,
      pageSize: 10,
      patientName: null,
      doctorName: null,
      paymentStatus: null,
    },
    rules_billing: {
      patientName: [{
        required: true,
        message: "患者姓名不能为空",
        trigger: "blur"
      }],
      doctorName: [{
        required: true,
        message: "就诊医生不能为空",
        trigger: "blur"
      }],
      billingDate: [{
        required: true,
        message: "账单日期不能为空",
        trigger: "blur"
      }],
      totalAmount: [{
        required: true,
        message: "金额不能为空",
        trigger: "blur"
      }],
      paymentStatus: [{
        required: true,
        message: "支付状态不能为空",
        trigger: "blur"
      }],
      paymentMethod: [{
        required: true,
        message: "支付方式不能为空",
        trigger: "change"
      }],
    }
  });
  const {
    form_billing,
    rules_billing
  } = toRefs(data_billing);

  /** 新增按钮操作 */
  function handleAdd_billing(row) {
    if (row) {
      // 自动填充患者姓名和医生姓名
      form_billing.value.patientName = row.patientName; // 绑定患者姓名
      form_billing.value.doctorName = row.doctorName; // 绑定医生姓名
    }

    openbilling.value = true; // 打开账单弹窗
    title.value = "添加账单"; // 设置弹窗标题
  }


  /** 提交按钮 */
  function submitForm_off() {
    proxy.$refs["billingRef"].validate((valid) => {
      if (valid) {
        form_billing.value.paymentStatus = form_billing.value.paymentStatus.join(",");
        form_billing.value.paymentMethod = form_billing.value.paymentMethod.join(",");
        console.log(form_billing.value);
        addBilling(form_billing.value).then((response) => {
          proxy.$modal.msgSuccess("新增成功");
          openbilling.value = false;
          getList();
        });
      }
    });
  }
  /** 取消按钮 */
  function cancel_off() {
    openbilling.value = false;
  }


  // 新增就诊记录功能
  import {
    addRecords
  } from "@/api/record/records";

  const open_records = ref(false);
  const data_records = reactive({
    form_records: {},
    queryParams_records: {
      pageNum: 1,
      pageSize: 10,
      patientId: null,
      patientName: null,
      doctorId: null,
      doctorName: null,
      treatmentType: null,
      medicalRecordsStatue: null,
    },
    rules_records: {
      // patientId: [{
      //   required: true,
      //   message: "患者ID不能为空",
      //   trigger: "blur"
      // }],
      patientName: [{
        required: true,
        message: "患者姓名不能为空",
        trigger: "blur"
      }],
    }
  });
  const {
    form_records,
    rules_records
  } = toRefs(data_records);
  /** 新增按钮操作 */
  function handleAdd_records(row) {
    if (row) {
      form_records.value.patientName = row.patientName;
      form_records.value.doctorName = row.doctorName;
    }
    open_records.value = true;
    title.value = "添加就诊记录";
  }
  /** 提交按钮 */
  function submitForm_records() {
    proxy.$refs["recordsRef"].validate(valid => {

      addRecords(form_records.value).then(response => {
        proxy.$modal.msgSuccess("新增成功");
        open_records.value = false;
        getList();
      });
    });
  }
  /** 取消按钮 */
  function cancel_off_records() {
    open_records.value = false;
  }
  import {
    listDoctorlists,
    getDoctorlists,
    delDoctorlists,
    addDoctorlists,
    updateDoctorlists
  } from "@/api/doctorlist/doctorlists";


  // 选择医生功能

  const docterOptions = ref([]);
  const docterList = ref([]);
  const getDocterOptions = () => {
    listDoctorlists().then((response) => {
      docterList.value = response.rows;

      docterOptions.value = docterList.value.map(item => ({
        key: item.doctorId,
        value: item.name,
        label: item.name,
        phone: item.phone
      }));
    });
  };
  getDocterOptions();


  // const stuteOptions = ref([{
  //   key: 'pending',
  //     label: '未到',
  //     value: 'pending'
  //   },
  //   {
  //     label: '已到',
  //     value: 'completed'
  //   },
  //   {
  //     label: 'Cancelled',
  //     value: 'cancelled'
  //   }
  // ]);



  getList();
</script>