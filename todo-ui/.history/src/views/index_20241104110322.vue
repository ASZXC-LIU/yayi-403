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

              <div style="font-size: large;">124</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 已到访(人):</div>

              <div style="font-size: large;">4</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 未到访(人):</div>

              <div style="font-size: large;">12</div>
            </div>
            <div style="width: 30%;  text-align: center; padding: 5px; box-sizing: border-box;">

              <div style="font-size:14px;"> 已取消(人):</div>

              <div style="font-size: large;">12</div>
            </div>
          </div>

        </el-card>
      </div>
    </el-col>
    <!-- 第二列 -->
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
                  <span>124</span>
                </div>
              </el-card>
            </el-col>
            <!-- 右上 -->
            <el-col :span="12" style="padding: 0;"> 
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix">
                  <span>明日预约(人)</span>
                </div>
                <div class="card-content">
                  <span>56</span>
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
                  <span>12</span>
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
                  <span>4</span>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </div>
    </el-col>
    <el-col :span="12">
      <div style="background-color: lightcoral;height: 350px;">
        <el-calendar v-model="selectedDate">
          <template slot="dateCell" slot-scope="{ date, data }">
            <div @click="handleDayClick(date)">
              {{ data.day.split('-').slice(1).join('-') }}
              <div v-if="appointments[date] && appointments[date].length > 0">
                <div v-for="(appointment, index) in appointments[date]" :key="index"
                  :style="{ backgroundColor: appointment.color }">
                  {{ appointment.doctor }} - {{ appointment.patient }}
                </div>
              </div>
            </div>
          </template>
        </el-calendar>
      </div>
    </el-col>
  </el-row>
</template>

<script setup name="Index">
// const version = ref('3.8.7')
// import {
//   Document,
//   Menu as IconMenu,
//   Location,
//   Setting,
// } from '@element-plus/icons-vue'
// // const handleOpen = (key: string, keyPath: string[]) => {
// //   console.log(key, keyPath)
// // }
// // const handleClose = (key: string, keyPath: string[]) => {
// //   console.log(key, keyPath)
// // }
import { ref } from 'vue';
const selectedDate = ref(new Date());
const appointments = ref({});
const currentView = ref('month');
const selectedStartTime = ref(null);
const selectedEndTime = ref(null);
// 处理日期点击事件
const handleDayClick = (date) => {
  if (currentView.value === 'month') {
    currentView.value = 'day';
    selectedDate.value = date;
  } else if (currentView.value === 'day') {
    currentView.value = 'time';
    selectedDate.value = date;
  }
};

// 处理时间选择事件
const handleTimeSelect = (start, end) => {
  const dateKey = selectedDate.value.toISOString().split('T')[0];
  if (!appointments.value[dateKey]) {
    appointments.value[dateKey] = [];
  }
  appointments.value[dateKey].push({
    doctor: '张医生',
    patient: '李华',
    color: 'lightblue',
    start: start,
    end: end,
  });
  currentView.value = 'month';
};
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
