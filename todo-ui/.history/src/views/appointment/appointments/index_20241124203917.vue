<template>
  <div class="app-container">
    <!-- 搜索表单 -->
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="patientName">
        <el-input v-model="queryParams.patientName" placeholder="请输入患者姓名" clearable @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorId">
        <el-select v-model="queryParams.doctorId" placeholder="请选择医生姓名" clearable>
          <el-option v-for="dict in tt_doctor" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="预约项目" prop="appointmentProject">
        <el-select v-model="queryParams.appointmentProject" placeholder="请选择预约项目" clearable>
          <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="预约状态" prop="appointmentStatus">
        <el-select v-model="queryParams.appointmentStatus" placeholder="请选择预约状态" clearable>
          <el-option v-for="dict in tt_appointments_status" :key="dict.value" :label="dict.label" :value="dict.value" />
        </el-select>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <!-- 日期筛选 -->
    <el-form-item label="日期筛选" prop="dateRange">
      <el-select v-model="queryParams.dateRange" placeholder="选择日期范围" clearable @change="updateDateRange">
        <el-option label="今天" value="today"></el-option>
        <el-option label="明天" value="tomorrow"></el-option>
        <el-option label="本周" value="thisWeek"></el-option>
      </el-select>
    </el-form-item>

    <!-- 按钮操作栏 -->
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd" v-hasPermi="['appointment:appointments:add']">新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="success" plain icon="Edit" :disabled="single" @click="handleUpdate" v-hasPermi="['appointment:appointments:edit']">修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="danger" plain icon="Delete" :disabled="multiple" @click="handleDelete" v-hasPermi="['appointment:appointments:remove']">删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button type="warning" plain icon="Download" @click="handleExport" v-hasPermi="['appointment:appointments:export']">导出</el-button>
      </el-col>
    </el-row>

    <!-- 表格展示预约列表 -->
    <el-table v-loading="loading" :data="appointmentsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="预约ID" align="center" prop="appointmentId" />
      <el-table-column label="患者姓名" align="center" prop="ttPatient.name" />
      <el-table-column label="医生姓名" align="center" prop="ttDoctor.name">
        <template #default="scope">
          <dict-tag :options="tt_doctor" :value="scope.row.doctorId" />
        </template>
      </el-table-column>
      <el-table-column label="会诊时间" align="center" prop="appointmentTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.appointmentTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约时长" align="center" prop="appointmentDuration" />
      <el-table-column label="预约项目" align="center" prop="appointmentProject">
        <template #default="scope">
          <dict-tag :options="tt_tooth" :value="scope.row.appointmentProject" />
        </template>
      </el-table-column>
      <el-table-column label="预约状态" align="center" prop="appointmentStatus">
        <template #default="scope">
          <dict-tag :options="tt_appointments_status" :value="scope.row.appointmentStatus" />
        </template>
      </el-table-column>
      <el-table-column label="预约创建时间" align="center" prop="createdAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createdAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约更新时间" align="center" prop="updatedAt" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.updatedAt, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['appointment:appointments:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['appointment:appointments:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 分页 -->
    <pagination v-show="total > 0" :total="total" v-model:page="queryParams.pageNum" v-model:limit="queryParams.pageSize" @pagination="getList" />

    <!-- 添加或修改预约对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="appointmentsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="ttPatient.name">
          <el-input v-model="form.ttPatient.name" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="ttDoctor.name">
          <el-select v-model="form.ttDoctor.name" placeholder="请选择医生姓名">
            <el-option v-for="dict in tt_doctor" :key="dict.value" :label="dict.label" :value="dict.value" />
          </el-select>
        </el-form-item>
        <el-form-item label="会诊时间" prop="appointmentTime">
          <el-date-picker v-model="form.appointmentTime" value-format="YYYY-MM-DD HH:mm:ss" type="datetime" placeholder="选择日期时间" />
        </el-form-item>
        <el-form-item label="预约时长" prop="appointmentDuration">
          <el-input v-model="form.appointmentDuration" placeholder="请输入预约时长" />
        </el-form-item>
        <el-form-item label="预约项目" prop="appointmentProject">
          <el-select v-model="form.appointmentProject" placeholder="请选择预约项目">
            <el-option v-for="dict in tt_tooth" :key="dict.value" :label="dict.label" :value="dict.value" />
          </el-select>
        </el-form-item>
        <el-form-item label="预约状态" prop="appointmentStatus">
          <el-select v-model="form.appointmentStatus" placeholder="请选择预约状态">
            <el-option v-for="dict in tt_appointments_status" :key="dict.value" :label="dict.label" :value="dict.value" />
          </el-select>
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

<script setup>
import { ref, reactive, toRefs, getCurrentInstance } from "vue";
import { listAppointments, getAppointments, delAppointments, addAppointments, updateAppointments } from "@/api/appointment/appointments";

const { proxy } = getCurrentInstance();
const { tt_doctor, tt_tooth, tt_appointments_status } = proxy.useDict('tt_doctor', 'tt_tooth', 'tt_appointments_status');

const appointmentsList = ref([]);
const open = ref(false);
const loading = ref(false);
const title = ref('新增预约');
const form = reactive({
  appointmentId: '',
  ttPatient: { name: '' },
  ttDoctor: { name: '' },
  appointmentTime: '',
  appointmentDuration: '',
  appointmentProject: '',
  appointmentStatus: ''
});
const queryParams = reactive({
  pageNum: 1,
  pageSize: 10,
  patientName: '',
  doctorId: '',
  appointmentProject: '',
  appointmentStatus: '',
  dateRange: ''
});
const total = ref(0);
const multiple = ref(false);
const single = ref(false);

const showSearch = ref(true);

// 查询预约列表
const getList = async () => {
  loading.value = true;
  try {
    const res = await listAppointments(queryParams);
    appointmentsList.value = res.data.list;
    total.value = res.data.total;
  } catch (error) {
    console.error(error);
  } finally {
    loading.value = false;
  }
};

// 重置查询条件
const resetQuery = () => {
  queryParams.pageNum = 1;
  queryParams.pageSize = 10;
  queryParams.patientName = '';
  queryParams.doctorId = '';
  queryParams.appointmentProject = '';
  queryParams.appointmentStatus = '';
  queryParams.dateRange = '';
};

// 处理查询
const handleQuery = () => {
  getList();
};

// 处理删除
const handleDelete = async (row) => {
  try {
    await delAppointments(row.appointmentId);
    getList();
  } catch (error) {
    console.error(error);
  }
};

// 处理添加
const handleAdd = () => {
  title.value = '新增预约';
  form.appointmentId = '';
  form.ttPatient.name = '';
  form.ttDoctor.name = '';
  form.appointmentTime = '';
  form.appointmentDuration = '';
  form.appointmentProject = '';
  form.appointmentStatus = '';
  open.value = true;
};

// 处理更新
const handleUpdate = async (row) => {
  title.value = '修改预约';
  form.appointmentId = row.appointmentId;
  form.ttPatient.name = row.ttPatient.name;
  form.ttDoctor.name = row.ttDoctor.name;
  form.appointmentTime = row.appointmentTime;
  form.appointmentDuration = row.appointmentDuration;
  form.appointmentProject = row.appointmentProject;
  form.appointmentStatus = row.appointmentStatus;
  open.value = true;
};

// 提交表单
const submitForm = async () => {
  try {
    if (form.appointmentId) {
      await updateAppointments(form);
    } else {
      await addAppointments(form);
    }
    open.value = false;
    getList();
  } catch (error) {
    console.error(error);
  }
};

// 取消对话框
const cancel = () => {
  open.value = false;
};
</script>

<style scoped>
.app-container {
  padding: 20px;
}
.mb8 {
  margin-bottom: 8px;
}
.dialog-footer {
  display: flex;
  justify-content: flex-end;
}
</style>
