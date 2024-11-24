import { defineStore } from "pinia";
import { listAppointments } from "@/api/appointment/appointments";

export const useAppointmentStatsStore = defineStore("appointmentStats", {
  state: () => ({
    todayTotalAppointments: 0, // 今日预约总单数
    todayVisitedCount: 0, // 今日已到访人数
    todayCancelledCount: 0, // 今日已取消人数
    todayNoShowCount: 0, // 今日未到访人数
  }),
  actions: {
    async fetchTodayStats() {
      const today = new Date().toISOString().split("T")[0]; // 获取当前日期
      const response = await listAppointments({}); // 获取预约列表
      const appointmentList = response.rows;

      // 过滤出今天的预约数据
      const todayAppointments = appointmentList.filter((item) =>
        item.appointmentTime.startsWith(today)
      );

      // 计算统计数据
      this.todayTotalAppointments = todayAppointments.length;
      this.todayVisitedCount = todayAppointments.filter(
        (item) => item.appointmentStatus === "1"
      ).length;
      this.todayCancelledCount = todayAppointments.filter(
        (item) => item.appointmentStatus === "2"
      ).length;
      this.todayNoShowCount = todayAppointments.filter(
        (item) => item.appointmentStatus === "3"
      ).length;
    },
  },
});
