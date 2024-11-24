<template>
  <div class="dashboard">
    <!-- 今日到访和客户信息 -->
    <el-row class="info-section">
      <el-col :span="12">
        <el-card class="visit-info">
          <div>今日到访</div>
          <p>选中的日期：{{ selectedDate }}</p>
          <el-divider />
          <div class="info-data">
            <div v-for="(item, index) in visitData" :key="index" class="info-item">
              <div class="info-title">{{ item.title }}</div>
              <div class="info-value">{{ item.value }}</div>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="6">
        <el-card class="customer-info">
          <div>客户</div>
          <el-divider />
          <div class="info-data">
            <div v-for="(item, index) in customerData" :key="index" class="info-item">
              <div class="info-title">{{ item.title }}</div>
              <div class="info-value">{{ item.value }}</div>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="6">
        <el-card class="supplier-info">
          <div>供应商</div>
          <el-divider />
          <div class="info-data">
            <div v-for="(item, index) in supplierData" :key="index" class="info-item">
              <div class="info-title">{{ item.title }}</div>
              <div class="info-value">{{ item.value }}</div>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <el-row class="calendar-section">
      <el-col :span="12">
        <el-calendar v-model="selectedDate">
          <template #dateCell="{ date, data }">
            <p
              :class="data.isSelected ? 'is-selected' : ''"
              @click="handleDateClick(date, data)"
            >
              {{ data.day.split('-').slice(1).join('-') }}
              {{ data.isSelected ? '✔️' : '' }}
            </p>
          </template>
        </el-calendar>
      </el-col>
      <!-- 收银记录部分 -->
      <el-col :span="12">
        <el-card class="cashier-record">
          <div>收银记录</div>
          <el-divider />
          <el-row>
            <el-col v-for="(item, index) in cashierData" :key="index" :span="12">
              <el-card class="box-card" shadow="hover">
                <div slot="header" class="clearfix"><span>{{ item.title }}</span></div>
                <div class="card-content"><span>{{ item.value }}</span></div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import dayjs from 'dayjs';

// 当前选中的日期
const selectedDate = ref(dayjs().format('YYYY-MM-DD'));

// 点击日期时更新
const handleDateClick = (date, data) => {
  selectedDate.value = dayjs(date).format('YYYY-MM-DD');
};

// 数据示例
const cashierData = [
  { title: '今日单数(人)', value: '12' },
  { title: '总金额(元)', value: '894' },
  { title: '已收款(元)', value: '756' },
  { title: '待收款(元)', value: '138' },
];

const visitData = [
  { title: '今日预约(人)', value: '24' },
  { title: '已到访(人)', value: '12' },
  { title: '未到访(人)', value: '4' },
  { title: '已取消(人)', value: '8' },
];

const customerData = [
  { title: '今日+', value: '12' },
  { title: '本周+', value: '48' },
  { title: '本月+', value: '207' },
  { title: '总客户数', value: '1280' },
];

const supplierData = [
  { title: '今日+', value: '0' },
  { title: '本周+', value: '0' },
  { title: '本月+', value: '2' },
  { title: '总客户数', value: '25' },
];
</script>

<style scoped lang="scss">
.dashboard {
  padding: 20px;

  .calendar-section {
    margin-bottom: 20px;
    height: 300px;

    .el-calendar {
      border: 1px solid #dcdfe6;
      border-radius: 5px;
    }
  }

  .cashier-record {
    height: 100%;
    .box-card {
      margin-bottom: 15px;
      text-align: center;

      .card-content {
        font-size: large;
        margin-top: 10px;
      }
    }
  }

  .info-section {
    .info-data {
      display: flex;
      justify-content: space-between;
      height: 150;

      .info-item {
        width: 25%;
        text-align: center;

        .info-title {
          font-size: 14px;
        }

        .info-value {
          font-size: large;
        }
      }
    }

    .visit-info,
    .customer-info,
    .supplier-info {
      height: 100%;
    }
  }
}

.is-selected {
  color: #1989fa;
}
</style>
