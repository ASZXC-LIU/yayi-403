<template>
    <div class="schedule-container">
      <div class="header">
        <el-button type="primary" @click="addAppointment">新建预约</el-button>
      </div>
      <el-row class="schedule-table">
        <el-col
          v-for="doctor in doctors"
          :key="doctor.id"
          :span="6"
          class="doctor-column"
        >
          <div class="doctor-name">{{ doctor.name }}</div>
          <div class="appointments">
            <div
              v-for="appointment in doctor.appointments"
              :key="appointment.id"
              class="appointment-card"
              :style="getAppointmentStyle(appointment)"
            >
              <div>{{ appointment.patient }}</div>
              <div>{{ appointment.time }}</div>
            </div>
          </div>
        </el-col>
      </el-row>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        doctors: [
          {
            id: 1,
            name: "李医生",
            appointments: [
              { id: 1, patient: "张三", time: "08:00 - 08:30" },
            ],
          },
          {
            id: 2,
            name: "杜医生",
            appointments: [],
          },
          {
            id: 3,
            name: "雷医生",
            appointments: [
              { id: 2, patient: "李四", time: "14:30 - 15:00" },
            ],
          },
        ],
      };
    },
    methods: {
      getAppointmentStyle(appointment) {
        // 根据时间段动态设置高度、颜色等样式
        return {
          height: "50px",
          background: "#b2f2bb",
          margin: "5px 0",
        };
      },
      addAppointment() {
        console.log("新建预约功能");
      },
    },
  };
  </script>
  
  <style scoped>
  .schedule-container {
    padding: 20px;
  }
  .header {
    margin-bottom: 20px;
    text-align: right;
  }
  .schedule-table {
    display: flex;
    justify-content: space-between;
  }
  .doctor-column {
    border: 1px solid #dcdcdc;
    padding: 10px;
  }
  .doctor-name {
    font-weight: bold;
    margin-bottom: 10px;
    text-align: center;
  }
  .appointments {
    margin-top: 10px;
  }
  .appointment-card {
    padding: 10px;
    border-radius: 5px;
    color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  </style>
  