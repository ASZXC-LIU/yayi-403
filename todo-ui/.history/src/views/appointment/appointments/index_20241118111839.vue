<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="患者姓名" prop="patientName">
        <el-input
          v-model="queryParams.patientName"
          placeholder="请输入患者姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="医生姓名" prop="doctorId">
        <el-select v-model="queryParams.doctorId" placeholder="请选择医生姓名" clearable>
          <el-option
            v-for="dict in tt_doctor"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="预约项目" prop="appointmentProject">
        <el-select v-model="queryParams.appointmentProject" placeholder="请选择预约项目" clearable>
          <el-option
            v-for="dict in tt_tooth"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="预约状态" prop="appointmentStatus">
        <el-select v-model="queryParams.appointmentStatus" placeholder="请选择预约状态" clearable>
          <el-option
            v-for="dict in tt_appointments_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
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
          v-hasPermi="['appointment:appointments:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['appointment:appointments:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['appointment:appointments:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['appointment:appointments:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="appointmentsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="预约ID" align="center" prop="appointmentId" />
      <el-table-column label="患者姓名" align="center" prop="ttPatient.name" />
      <el-table-column label="医生姓名" align="center" prop="ttDoctor.name">
        <template #default="scope">
          <dict-tag :options="tt_doctor" :value="scope.row.doctorId"/>
        </template>
      </el-table-column>
      <el-table-column label="会诊时间" align="center" prop="appointmentTime" width="180">
        <template #default="scope">
          <span>{{ formatAppointmentTime(scope.row) }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预约项目" align="center" prop="appointmentProject">
        <template #default="scope">
          <dict-tag :options="tt_tooth" :value="scope.row.appointmentProject"/>
        </template>
      </el-table-column>
      <el-table-column label="预约状态" align="center" prop="appointmentStatus">
        <template #default="scope">
          <dict-tag :options="tt_appointments_status" :value="scope.row.appointmentStatus"/>
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
      <el-table-column label="操作" align="center">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['appointment:appointments:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['appointment:appointments:remove']">删除</el-button>
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

    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="appointmentsRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="患者姓名" prop="ttPatient.name">
          <el-input v-model="form.ttPatient.name" placeholder="请输入患者姓名" />
        </el-form-item>
        <el-form-item label="医生姓名" prop="ttDoctor.name">
          <el-select v-model="form.ttDoctor.name" placeholder="请选择医生姓名">
            <el-option
              v-for="dict in tt_doctor"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="会诊开始时间" prop="appointmentStartTime">
          <el-date-picker
            v-model="form.appointmentStartTime"
            type="datetime"
            value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择开始时间"
            clearable
          />
        </el-form-item>
        <el-form-item label="会诊结束时间" prop="appointmentEndTime">
          <el-date-picker
            v-model="form.appointmentEndTime"
            type="datetime"
            value-format="YYYY-MM-DD HH:mm:ss"
            placeholder="请选择结束时间"
            clearable
          />
        </el-form-item>
        <el-form-item label="预约项目" prop="appointmentProject">
          <el-select v-model="form.appointmentProject" placeholder="请选择预约项目">
            <el-option
              v-for="dict in tt_tooth"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="预约状态" prop="appointmentStatus">
          <el-select v-model="form.appointmentStatus" placeholder="请选择预约状态">
            <el-option
              v-for="dict in tt_appointments_status"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            />
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
<script>
import { reactive, ref, onMounted } from 'vue';
import { ElMessageBox, ElMessage } from 'element-plus';
import { parseTime } from '@/utils/index'; // 时间格式化工具函数
import { getList, addAppointment, updateAppointment, deleteAppointment } from '@/api/appointments'; // API 接口

export default {
  name: 'AppointmentManagement',
  setup() {
    // 搜索表单数据
    const queryParams = reactive({
      patientName: '',
      doctorId: '',
      appointmentProject: '',
      appointmentStatus: '',
      pageNum: 1,
      pageSize: 10,
    });

    // 表单数据
    const form = reactive({
      patientName: '',
      doctorId: '',
      appointmentStartTime: '',
      appointmentEndTime: '',
      appointmentProject: '',
      appointmentStatus: '',
    });

    const rules = {
      patientName: [{ required: true, message: '患者姓名不能为空', trigger: 'blur' }],
      doctorId: [{ required: true, message: '医生姓名不能为空', trigger: 'change' }],
      appointmentStartTime: [{ required: true, message: '开始时间不能为空', trigger: 'change' }],
      appointmentEndTime: [{ required: true, message: '结束时间不能为空', trigger: 'change' }],
      appointmentProject: [{ required: true, message: '项目不能为空', trigger: 'change' }],
      appointmentStatus: [{ required: true, message: '状态不能为空', trigger: 'change' }],
    };

    // 列表数据
    const appointmentsList = ref([]);
    const total = ref(0);
    const loading = ref(false);

    // 弹窗控制
    const open = ref(false);
    const title = ref('新增预约');

    // 初始化数据
    const getListData = async () => {
      loading.value = true;
      try {
        const { data } = await getList(queryParams);
        appointmentsList.value = data.records;
        total.value = data.total;
      } catch (error) {
        ElMessage.error('加载数据失败，请稍后再试');
      } finally {
        loading.value = false;
      }
    };

    // 搜索功能
    const handleQuery = () => {
      queryParams.pageNum = 1;
      getListData();
    };

    // 重置搜索
    const resetQuery = () => {
      Object.assign(queryParams, {
        patientName: '',
        doctorId: '',
        appointmentProject: '',
        appointmentStatus: '',
        pageNum: 1,
        pageSize: 10,
      });
      getListData();
    };

    // 新增预约
    const handleAdd = () => {
      title.value = '新增预约';
      Object.assign(form, {
        patientName: '',
        doctorId: '',
        appointmentStartTime: '',
        appointmentEndTime: '',
        appointmentProject: '',
        appointmentStatus: '',
      });
      open.value = true;
    };

    // 编辑预约
    const handleUpdate = (row) => {
      title.value = '编辑预约';
      Object.assign(form, row);
      open.value = true;
    };

    // 提交表单
    const submitForm = async () => {
      const action = form.appointmentId ? updateAppointment : addAppointment;
      try {
        await action(form);
        ElMessage.success('操作成功');
        open.value = false;
        getListData();
      } catch (error) {
        ElMessage.error('操作失败，请稍后再试');
      }
    };

    // 删除预约
    const handleDelete = async (row) => {
      try {
        await ElMessageBox.confirm('确定删除该预约记录吗？', '提示', {
          type: 'warning',
        });
        await deleteAppointment(row.appointmentId);
        ElMessage.success('删除成功');
        getListData();
      } catch (error) {
        ElMessage.error('删除失败');
      }
    };

    // 分页
    const handlePagination = (page, limit) => {
      queryParams.pageNum = page;
      queryParams.pageSize = limit;
      getListData();
    };

    onMounted(() => {
      getListData();
    });

    return {
      queryParams,
      appointmentsList,
      total,
      loading,
      open,
      title,
      form,
      rules,
      handleQuery,
      resetQuery,
      handleAdd,
      handleUpdate,
      submitForm,
      handleDelete,
      handlePagination,
      parseTime,
    };
  },
};
</script>
