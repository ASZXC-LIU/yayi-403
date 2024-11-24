// 文件名：src/stores/billingStats.js
import { defineStore } from "pinia";
import listBilling from "@/api/billing/billing";

export const useBillingStatsStore = defineStore("billingStats", {
  state: () => ({
    todayBillingCount: 0,
    todayTotalAmount: 0,
    todayPaidAmount: 0,
    todayUnpaidAmount: 0,
  }),
  actions: {
    async fetchTodayStats() {
      const today = new Date().toISOString().split("T")[0];
      const response = await listBilling({});
      const billingList = response.rows;

      const todayBillings = billingList.filter((item) =>
        item.billingDate.startsWith(today)
      );

      this.todayBillingCount = todayBillings.length;
      this.todayTotalAmount = this.formatAmount(
        todayBillings.reduce((sum, item) => sum + item.totalAmount, 0)
      );
      this.todayPaidAmount = this.formatAmount(
        todayBillings
          .filter((item) => item.paymentStatus === "1")
          .reduce((sum, item) => sum + item.totalAmount, 0)
      );
      this.todayUnpaidAmount = this.formatAmount(
        todayBillings
          .filter((item) => item.paymentStatus === "2")
          .reduce((sum, item) => sum + item.totalAmount, 0)
      );
    },
    formatAmount(amount) {
      return Math.round(amount * 100) / 100;
    },
  },
});
