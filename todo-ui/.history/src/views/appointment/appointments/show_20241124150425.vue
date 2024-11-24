<template>
  
  <div class="appointment-page">
    <div class="layout-container">
      <!-- 左侧日历 -->
      <el-calendar
        class="calendar"
        v-model="selectedDate"
        @change="fetchAppointments"
      />

      <!-- 右侧预约分布 -->
      <div class="appointments-container">
        <el-row>
          <!-- 医生列表（横向） -->
          <el-col
            v-for="doctor in doctorList"
            :key="doctor.id"
            :span="6"
            class="doctor-column"
          >
            <div class="doctor-header">
              {{ doctor.name }}
            </div>
            <div class="time-slots">
              <!-- 每个时间段 -->
              <div
                v-for="slot in timeSlots"
                :key="slot.time"
                class="time-slot"
              >
                <!-- 渲染预约块 -->
                <div
                  v-for="appointment in doctor.appointments"
                  :key="appointment.id"
                  v-if="appointment.time === slot.time"
                  class="appointment-block"
                >
                  {{ appointment.patientName }}
                  <el-button
                    type="text"
                    @click="handleEdit(appointment)"
                  >
                    编辑
                  </el-button>
                </div>
              </div>
            </div>
          </el-col>
        </el-row>
      </div>
    </div>

    <!-- 弹窗编辑 -->
    <el-dialog title="编辑预约" :visible.sync="dialogVisible">
      <el-form :model="formData" label-width="80px">
        <el-form-item label="时间段">
          <el-time-select v-model="formData.time" :picker-options="timeOptions" />
        </el-form-item>
        <el-form-item label="患者姓名">
          <el-input v-model="formData.patientName" />
        </el-form-item>
        <el-form-item label="项目">
          <el-input v-model="formData.project" />
        </el-form-item>
      </el-form>
      <div slot="footer">
        <el-button @click="dialogVisible = false">取消</el-button>
        <el-button type="primary" @click="saveAppointment">保存</el-button>
      </div>
    </el-dialog>
  </div>
</template>
<script>
import { listAppointments, updateAppointments } from "@/api/appointments";

export default {
  data() {
    return {
      selectedDate: "", // 当前选择的日期
      doctorList: [], // 医生及其预约数据
      timeSlots: [
        { time: "08:00" },
        { time: "08:30" },
        { time: "09:00" },
        // ...其他时间段
      ],
      dialogVisible: false, // 弹窗显示状态
      formData: {}, // 编辑中的预约数据
    };
  },
  methods: {
    // 获取某天的预约数据
    async fetchAppointments() {
      const query = { date: this.selectedDate };
      const response = await listAppointments(query);
      this.doctorList = this.formatAppointments(response.data);
    },

    // 格式化后端数据到前端
    formatAppointments(data) {
      return data.map((doctor) => ({
        id: doctor.id,
        name: doctor.name,
        appointments: doctor.appointments.map((a) => ({
          id: a.id,
          time: a.time,
          patientName: a.patientName,
          project: a.project,
        })),
      }));
    },

    // 编辑预约
    handleEdit(appointment) {
      this.formData = { ...appointment };
      this.dialogVisible = true;
    },

    // 保存修改
    async saveAppointment() {
      await updateAppointments(this.formData);
      this.dialogVisible = false;
      this.fetchAppointments();
    },
  },
  mounted() {
    this.selectedDate = new Date().toISOString().split("T")[0];
    this.fetchAppointments();
  },
};
</script>
<style scoped>
.layout-container {
  display: flex;
}
.calendar {
  width: 20%;
}
.appointments-container {
  width: 80%;
}
.doctor-column {
  border: 1px solid #ccc;
  margin: 5px;
}
.doctor-header {
  background: #f0f0f0;
  text-align: center;
  padding: 10px;
  font-weight: bold;
}
.time-slot {
  height: 50px;
  border-bottom: 1px solid #e0e0e0;
  display: flex;
  align-items: center;
  justify-content: center;
}
.appointment-block {
  background: #cce5ff;
  padding: 5px;
  border-radius: 5px;
  margin: 2px;
  cursor: pointer;
}
</style>
