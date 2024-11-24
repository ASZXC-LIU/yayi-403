<template>
  <!-- 第一行排版 -->
  <el-row class="tac1" style="height: 300px; background-color: red;">
    <!-- 第一列 -->
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
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
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            客户
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;margin-top: 75px;">
            <!-- 卡片中三个数据 -->
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 今日＋</div>

              <div style="font-size: large;">4</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 本周＋</div>

              <div style="font-size: large;">13</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 本月＋</div>

              <div style="font-size: large;">24</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 总客户数</div>

              <div style="font-size: large;">1280</div>
            </div>
          </div>
        </el-card>
      </div>



    </el-col>
    <!-- 第三列 -->
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            供应商
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;margin-top: 75px;">
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 今日＋</div>

              <div style="font-size: large;">0</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 本周＋</div>

              <div style="font-size: large;">0</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 本月＋</div>

              <div style="font-size: large;">2</div>
            </div>
            <div style="width: 25%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 总客户数</div>

              <div style="font-size: large;">25</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
  </el-row><!-- 第二列 -->



  <!-- 模块排版 -->
  <!-- 下侧大模块 -->
  <el-row class="tac1" style="height: 590px; background-color: lightblue;">
    <el-col :span="12">
      <div
        style="width: 100%; height: 590px; margin: 0 auto; flex-wrap: wrap; justify-content: center; align-items: center; background-color: lightblue;">
        <el-card
          style="width: 99%; height: 570px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 ">收银记录</div>
          <el-divider />
          <el-row style="width: 100%;">
            <!-- 数据展示 -->
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>今日单数(人)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStats.todayBillingCount }}</span>
                </div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>总金额(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStats.todayTotalAmount }}</span>
                </div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>已收款(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStats.todayPaidAmount }}</span>
                </div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>待收款(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStats.todayUnpaidAmount }}</span>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </div>
    </el-col>

    <el-col :span="12">
      <el-calendar v-model="value"></el-calendar>
    </el-col>
  </el-row>
</template>

<script>
import { useBillingStatsStore } from "@/store/billingStats";
import { useAppointmentStatsStore } from "@/stores/appointmentStats";

export default {
  data() {
    return {
      value: new Date(),
    };
  },
  computed: {
    billingStats() {
      return useBillingStatsStore();
    },
  },
  mounted() {
    this.billingStats.fetchTodayStats();
  },
};

</script>

<style scoped lang="scss">
/* 保持原有样式 */
</style>
