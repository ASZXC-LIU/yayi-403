<template>
  <!-- 第一行排版 -->
  <el-row class="tac1" style="height: 300px; background-color: red;">
    <!-- 第一列 -->
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%; height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px 0 20px;">今日到访</div>
          <el-divider />
          <div style="display: flex; justify-content: space-between; vertical-align: middle; margin-top: 75px;">
            <!-- 动态数据绑定 -->
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">今日预约(人):</div>
              <div style="font-size: large;">{{ appointmentStats.todayTotalAppointments }}</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">已到访(人):</div>
              <div style="font-size: large;">{{ appointmentStats.todayVisitedCount }}</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">未到访(人):</div>
              <div style="font-size: large;">{{ appointmentStats.todayNoShowCount }}</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">已取消(人):</div>
              <div style="font-size: large;">{{ appointmentStats.todayCancelledCount }}</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
    <!-- 其他列不变 -->
    <!-- 第二列 -->
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%; height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px;  position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px 0 20px;">客户</div>
          <el-divider />
          <div style="display: flex; justify-content: space-between; margin-top: 75px;">
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">今日＋</div>
              <div style="font-size: large;">4</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本周＋</div>
              <div style="font-size: large;">13</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本月＋</div>
              <div style="font-size: large;">24</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">总客户数</div>
              <div style="font-size: large;">1280</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
    <!-- 第三列 -->
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%; height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px;  position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px 0 20px;">供应商</div>
          <el-divider />
          <div style="display: flex; justify-content: space-between; margin-top: 75px;">
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">今日＋</div>
              <div style="font-size: large;">0</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本周＋</div>
              <div style="font-size: large;">0</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本月＋</div>
              <div style="font-size: large;">2</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">总客户数</div>
              <div style="font-size: large;">25</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
  </el-row>
</template>

<script setup>
import { useBillingStatsStore } from "@/store/billingStats";
import { useAppointmentStatsStore } from "@/store/appointmentStats";
import { ref, onMounted } from "vue";

// 日期选择
const value = ref(new Date());

// 使用 stores
const appointmentStats = useAppointmentStatsStore();
const billingStats = useBillingStatsStore();

// 页面挂载时调用数据
onMounted(() => {
  appointmentStats.fetchTodayStats();
  billingStats.fetchTodayStats();
});
</script>

<style scoped lang="scss">
/* 保持原有样式 */
</style>
