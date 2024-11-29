// services/billingService.js
import { addBilling } from "@/api/billing/billing"; // 引入新增账单的 API

// 新增账单的公共方法
export const createBilling = async (billingData) => {
  try {
    const response = await addBilling(billingData);
    console.log('新增账单成功:', response);
    return response.data;  // 返回新增账单的结果
  } catch (error) {
    console.error('新增账单失败:', error);
    throw new Error("新增账单失败，请稍后再试");
  }
};
