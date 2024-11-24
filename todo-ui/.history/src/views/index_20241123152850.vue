<template>
  <!-- 第一行排版 -->
  <el-row class="tac1" style="height: 300px; background-color: red;">
    <!-- 第一列 -->
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 297px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            今日到访
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;vertical-align: middle;margin-top: 75px;">
            <!-- 卡片中三个数据 -->
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 今日预约(人):</div>

              <div style="font-size: large;">{{ appointmentStatsStore.todayTotalAppointments }}</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 已到访(人):</div>

              <div style="font-size: large;">{{ appointmentStatsStore.todayVisitedCount }}</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 未到访(人):</div>

              <div style="font-size: large;">{{ appointmentStatsStore.todayNoShowCount }}</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 已取消(人):</div>

              <div style="font-size: large;">{{ appointmentStatsStore.todayCancelledCount }}</div>
            </div>
          </div>

        </el-card>
      </div>
    </el-col>
    
    <!-- 第三列 -->
    <el-col :span="12">
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

  </el-row>

  <!-- 模块排版 -->
  <!-- 下侧大模块 -->
  <el-row class="tac1" style="height: 590px; background-color: lightblue;">
    <el-col :span="12"> <!--左下大块部分，显示销售，库存，患者等数据信息 -->
      <div
        style="width: 100%; height: 590px; margin: 0 auto; flex-wrap: wrap; justify-content: center; align-items: center; background-color: lightblue;">

        <el-card
          style="width: 99%; height: 570px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 ">
            收银记录
          </div>
          <el-divider /> <!-- 上下分割线 -->
          <el-row style="width: 100%;">
            <!-- 左上 -->
            <el-col :span="12" style="padding: 0;"> <!-- 去除左上外间距 -->
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>今日单数(人)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStatsStore.todayBillingCount }}</span>
                </div>
              </el-card>
            </el-col>
            <!-- 右上 -->
            <el-col :span="12" style="padding: 0;"> 
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>总金额(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStatsStore.todayTotalAmount }}</span>
                </div>
              </el-card>
            </el-col>
            <!-- 左下 -->
            <el-col :span="12" style="padding: 0;"> <!-- 去除左下外间距 -->
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>已收款(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStatsStore.todayPaidAmount }}</span>
                </div>
              </el-card>
            </el-col>
            <!-- 右下 -->
            <el-col :span="12" style="padding: 0;"> <!-- 去除右下外间距 -->
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>待收款(元)</span>
                </div>
                <div class="card-content">
                  <span>{{ billingStatsStore.todayUnpaidAmount }}</span>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </div>
    </el-col>
    <el-col :span="12">
      <el-calendar v-model="value">
      </el-calendar>
    </el-col>
  </el-row>
</template>

<script setup name="Index">
  import { ref } from 'vue';
  import { useBillingStatsStore } from "@/store/billingStats";
  import { useAppointmentStatsStore } from "@/store/appointmentStats";
const billingStatsStore = useBillingStatsStore();
const appointmentStatsStore = useAppointmentStatsStore();
appointmentStatsStore.fetchTodayStats();
// 页面加载时获取数据
onMounted(async () => {
  await billingStatsStore.fetchTodayStats();
});
  const value = ref(new Date());
</script>

<style scoped lang="scss">
.home {
  blockquote {

    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }


  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans",
  "Helvetica Neue",
  Helvetica,
  Arial,
  sans-serif;

  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  .box-card {
    width: 100%;
    height: 144px;
    text-align: center;
  }

  .card-content {
    font-size: large;
    margin-top: 10px;
  }
}
</style>