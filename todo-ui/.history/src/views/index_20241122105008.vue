<template>
  <el-row class="tac1">
    <el-col :span="12">
      <el-card>
        <div>今日到访</div>
        <p>选中的日期：{{ selectedDate }}</p>
        <el-divider />
        <div class="card-grid">
          <div v-for="(item, index) in visitStats" :key="index" class="card-item">
            <div>{{ item.label }}</div>
            <div>{{ item.value }}</div>
          </div>
        </div>
      </el-card>
    </el-col>
    <el-col :span="12">
      <el-calendar v-model="selectedDate">
        <template #dateCell="{ date, data }">
          <p :class="{ 'is-selected': isSelected(date) }" @click="handleDateClick(date, data)">
            {{ dayjs(date).format('MM-DD') }}
          </p>
        </template>
      </el-calendar>
    </el-col>
  </el-row>
</template>

<script setup>
import { ref, watch } from 'vue';
import dayjs from 'dayjs';

// 选中的日期
const selectedDate = ref(dayjs().format('YYYY-MM-DD'));

// 模拟数据
const visitStats = [
  { label: '今日预约(人):', value: 24 },
  { label: '已到访(人):', value: 12 },
  { label: '未到访(人):', value: 4 },
  { label: '已取消(人):', value: 8 },
];

// 判断是否选中
const isSelected = (date) => dayjs(date).isSame(selectedDate.value, 'date');

// 点击日期的处理函数
const handleDateClick = (date, data) => {
  console.log('点击日期:', date, '数据:', data);
  selectedDate.value = dayjs(date).format('YYYY-MM-DD');
};

// 监听日期变化
watch(selectedDate, (newDate) => {
  console.log('选中的日期已更新:', newDate);
});
</script>

<style scoped>
.tac1 {
  display: flex;
  background-color: lightblue;
}
.card-grid {
  display: flex;
  justify-content: space-between;
}
.card-item {
  text-align: center;
  width: 30%;
}
.is-selected {
  color: #1989fa;
  font-weight: bold;
}
</style>
