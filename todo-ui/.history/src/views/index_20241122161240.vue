<template>
  <el-row class="tac1" style="height: 300px; background-color: red;">
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <el-card
          style="width: 99%; height: 297px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px;">今日到访</div>
          
          <el-divider />
          <div style="display: flex; justify-content: space-between; margin-top: 75px;">
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">今日预约(人):</div>
              <div style="font-size: large;">24</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">已到访(人):</div>
              <div style="font-size: large;">12</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">未到访(人):</div>
              <div style="font-size: large;">4</div>
            </div>
            <div style="width: 30%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">已取消(人):</div>
              <div style="font-size: large;">8</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <el-card
          style="width: 99%; height: 297px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px;">客户</div>
          <el-divider />
          <div style="display: flex; justify-content: space-between; margin-top: 75px;">
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">今日＋</div>
              <div style="font-size: large;">12</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本周＋</div>
              <div style="font-size: large;">48</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">本月＋</div>
              <div style="font-size: large;">207</div>
            </div>
            <div style="width: 25%; text-align: center; padding: 5px; box-sizing: border-box;">
              <div style="font-size:14px;">总客户数</div>
              <div style="font-size: large;">1280</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%;height: 300px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <el-card
          style="width: 99%; height: 297px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 0 20px;">供应商</div>
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
  <el-row class="tac1" style="height: 590px; background-color: lightblue;">
    <el-col :span="12">
      <div
        style="width: 100%; height: 590px; margin: 0 auto; flex-wrap: wrap; justify-content: center; align-items: center; background-color: lightblue;">
        <el-card
          style="width: 99%; height: 570px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div>收银记录</div>
          <el-divider />
          <el-row style="width: 100%;">
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix"><span>今日单数(人)</span></div>
                <div class="card-content"><span>12</span></div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix"><span>总金额(元)</span></div>
                <div class="card-content"><span>894</span></div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix"><span>已收款(元)</span></div>
                <div class="card-content"><span>756</span></div>
              </el-card>
            </el-col>
            <el-col :span="12" style="padding: 0;">
              <el-card class="box-card" shadow="hover" style="height: 124px; border: none;">
                <div slot="header" class="clearfix"><span>待收款(元)</span></div>
                <div class="card-content"><span>138</span></div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </div>
    </el-col>
    <el-col :span="12">
      <el-calendar v-model="selectedDate">
    <template #dateCell="{ date, data }">
      <p 
        :class="data.isSelected ? 'is-selected' : ''" 
        @click="handleDateClick(date, data)">
        {{ data.day.split('-').slice(1).join('-') }}
        {{ data.isSelected ? '✔️' : '' }}
      </p>
    </template>
  </el-calendar>
    </el-col>
  </el-row>

</template>

<script setup>
import { ref, watch } from 'vue';
import dayjs from 'dayjs';

// 选中的日期，初始化为当前日期
const selectedDate = ref(dayjs().format('YYYY-MM-DD')); // 格式化为 YYYY-MM-DD 格式
console.log('selectedDate:', selectedDate.value);

// 处理日期变化的函数
const handleDateChange = (newDate) => {
  console.log('日期变化:', newDate);
  console.log('111111111111111111111111111111');
  console.log('selectedDate:', selectedDate.value);
  // 在这里可以添加更多处理逻辑
};

// 监听 selectedDate 的变化
watch(selectedDate, (newDate) => {
  handleDateChange(newDate); // 调用处理函数
});

const handleDateClick = (date, data) => {
  console.log('点击的日期:', date);
  console.log('日期数据:', data);
  selectedDate.value = dayjs(date).format('YYYY-MM-DD'); // 更新选中的日期
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

.is-selected {
  color: #1989FA;
}
</style>