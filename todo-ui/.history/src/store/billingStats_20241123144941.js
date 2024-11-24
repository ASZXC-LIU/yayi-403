import { defineStore } from "pinia";
import { listBilling } from "@/api/billing/billing";

export const useBillingStatsStore = defineStore("billingStats", {
  state: () => ({
    todayBillingCount: 0,
    todayTotalAmount: 0,
    todayPaidAmount: 0,
    todayUnpaidAmount: 0,
  }),
  actions: {
    async fetchTodayStats() {
      try {
        const today = new Date().toISOString().split("T")[0];
        const response = await listBilling({});
        const billingList = response?.rows || [];

        const stats = {
          count: 0,
          totalAmount: 0,
          paidAmount: 0,
          unpaidAmount: 0,
        };

        billingList.forEach((item) => {
          // 处理日期格式，确保一致性
          const billingDate = new Date(item.billingDate).toISOString().split("T")[0];
          if (billingDate === today) {
            stats.count++;
            stats.totalAmount += item.totalAmount;
            if (item.paymentStatus === "1") {
              stats.paidAmount += item.totalAmount;
            } else if (item.paymentStatus === "2") {
              stats.unpaidAmount += item.totalAmount;
            }
          }
        });

        // 批量更新状态
        this.$patch({
          todayBillingCount: stats.count,
          todayTotalAmount: this.formatAmount(stats.totalAmount),
          todayPaidAmount: this.formatAmount(stats.paidAmount),
          todayUnpaidAmount: this.formatAmount(stats.unpaidAmount),
        });
      } catch (error) {
        console.error("Failed to fetch billing stats:", error);
      }
    },
    formatAmount(amount) {
      return Math.round(amount * 100) / 100;
    },
  },
});
