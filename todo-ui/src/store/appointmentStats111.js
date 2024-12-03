import { defineStore } from "pinia";
import { listAppointmentte } from "@/api/appointmentte/appointmentte";

export const useAppointmentStatsStore = defineStore("appointmentStats", {
  state: () => ({
    todayTotalAppointments: 0, // 今日预约总单数
    todayVisitedCount: 0, // 今日已到访人数
    todayCancelledCount: 0, // 今日已取消人数
    todayNoShowCount: 0, // 今日未到访人数
  }),
  actions: {
    async fetchTodayStats() {
      try {
        const today = new Date().toISOString().split("T")[0]; // 获取当前日期

        // 获取预约列表
        const response = await listAppointmentte({});
        if (!response || !response.rows) {
          throw new Error("API 返回数据无效");
        }

        const appointmentList = response.rows;
        console.log(appointmentList);
        // 过滤出今天的预约数据
        const todayAppointments = appointmentList.filter((item) =>
          item.appointmentStartTime.startsWith(today) // 确保时间从今天开始
        );
        console.log(todayAppointments);
        // 统计今日预约的各个状态
        this.todayTotalAppointments = todayAppointments.length;
        this.todayVisitedCount = todayAppointments.filter(
          (item) => item.appointmentStatus === "4"
        ).length;
        this.todayCancelledCount = todayAppointments.filter(
          (item) => item.appointmentStatus === "2"
        ).length;
        this.todayNoShowCount = todayAppointments.filter(
          (item) => item.appointmentStatus === "3"
        ).length;
        
      } catch (error) {
        console.error("获取今日预约统计时发生错误:", error);
      }
    },
  },
});
