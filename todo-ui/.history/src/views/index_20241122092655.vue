<template>
  <!-- 第一行排版 -->
  <el-row class="row-container">
    <!-- 今日到访 -->
    <el-col :span="12">
      <div class="card-wrapper">
        <el-card class="dashboard-card">
          <div class="card-header">今日到访</div>
          <el-divider />
          <div class="card-data">
            <div class="data-item">
              <div class="label">今日预约(人):</div>
              <div class="value">124</div>
            </div>
            <div class="data-item">
              <div class="label">已到访(人):</div>
              <div class="value">4</div>
            </div>
            <div class="data-item">
              <div class="label">未到访(人):</div>
              <div class="value">12</div>
            </div>
            <div class="data-item">
              <div class="label">已取消(人):</div>
              <div class="value">12</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>

    <!-- 客户 -->
    <el-col :span="6">
      <div class="card-wrapper">
        <el-card class="dashboard-card">
          <div class="card-header">客户</div>
          <el-divider />
          <div class="card-data">
            <div class="data-item">
              <div class="label">今日＋</div>
              <div class="value">4</div>
            </div>
            <div class="data-item">
              <div class="label">本周＋</div>
              <div class="value">13</div>
            </div>
            <div class="data-item">
              <div class="label">本月＋</div>
              <div class="value">24</div>
            </div>
            <div class="data-item">
              <div class="label">总客户数</div>
              <div class="value">1280</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>

    <!-- 供应商 -->
    <el-col :span="6">
      <div class="card-wrapper">
        <el-card class="dashboard-card">
          <div class="card-header">供应商</div>
          <el-divider />
          <div class="card-data">
            <div class="data-item">
              <div class="label">今日＋</div>
              <div class="value">0</div>
            </div>
            <div class="data-item">
              <div class="label">本周＋</div>
              <div class="value">0</div>
            </div>
            <div class="data-item">
              <div class="label">本月＋</div>
              <div class="value">2</div>
            </div>
            <div class="data-item">
              <div class="label">总客户数</div>
              <div class="value">25</div>
            </div>
          </div>
        </el-card>
      </div>
    </el-col>
  </el-row>

  <!-- 下侧大模块 -->
  <el-row class="row-container">
    <el-col :span="12">
      <div class="card-wrapper large-card">
        <el-card>
          <div class="card-header">收银记录</div>
          <el-divider />
          <el-row>
            <el-col :span="12" v-for="(item, index) in cashRecords" :key="index">
              <el-card class="box-card">
                <div class="header">{{ item.label }}</div>
                <div class="value">{{ item.value }}</div>
              </el-card>
            </el-col>
          </el-row>
        </el-card>
      </div>
    </el-col>
    <el-calendar v-slot:date-cell="{ date, data }">
    <p :class="{ 'is-selected': data.isSelected }">
      {{ data.day.split('-').slice(1).join('-') }} {{ data.isSelected ? '✔️' : '' }}
    </p>
  </el-calendar>
  </el-row>

  <!-- 日历 -->

</template>

<script>
export default {
  data() {
    return {
      cashRecords: [
        { label: "今日单数(人)", value: 124 },
        { label: "总金额(元)", value: 56 },
        { label: "已收款(元)", value: 12 },
        { label: "待收款(元)", value: 4 },
      ],
    };
  },
};
</script>

<style scoped lang="scss">
.row-container {
  margin-bottom: 20px;
  background-color: #f5f5f5;
}
.card-wrapper {
  width: 100%;
  margin: 0 auto;
}
.dashboard-card {
  height: 300px;
}
.large-card {
  height: 590px;
}
.card-header {
  font-size: 18px;
  margin: 10px 0;
}
.card-data {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 75px;
}
.data-item {
  width: 24%;
  text-align: center;
}
.label {
  font-size: 14px;
}
.value {
  font-size: large;
  font-weight: bold;
}
.box-card {
  text-align: center;
  border: none;
  height: 124px;
}
.is-selected {
  color: #1989fa;
}
</style>
