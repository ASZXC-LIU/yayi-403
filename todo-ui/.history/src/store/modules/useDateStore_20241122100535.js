import { defineStore } from 'pinia';
import dayjs from 'dayjs';

export const useDateStore = defineStore('date', {
  state: () => ({
    selectedDate: dayjs().format('YYYY-MM-DD'), // 默认选中日期
  }),
  actions: {
    setDate(newDate) {
      this.selectedDate = dayjs(newDate).format('YYYY-MM-DD'); // 更新并格式化日期
    },
  },
});
