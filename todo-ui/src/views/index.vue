<template>
  <div class="myChart">
    <el-row class="tac1" style="height: auto; background-color: lightblue;" gutter="20">
      <!-- 第一列 -->
      <el-col :xs="24" :sm="12" style="margin-bottom: 20px;">
        <el-card class="responsive-card">
           <div ref="chartContainer" style="width: 100%; height: 400px;"></div>
        </el-card>
      </el-col>

      <!-- 第二列 -->
      <el-col :xs="24" :sm="12"  style="margin-bottom: 20px;">
        <el-card class="responsive-card">
          <div ref="chartContainer2" style="width: 100%; height: 400px;"></div>
        </el-card>
      </el-col>

    
    </el-row>

    <!-- 下侧大模块 -->
    <el-row class="tac1" style="height: auto; background-color: lightblue;" gutter="20">
      <!-- 收银记录 -->
      <el-col :xs="24" :sm="12" style="margin-bottom: 20px;">
        <el-card class="responsive-card" style="height: auto;">
          <div>收银记录</div>
          <el-divider />
          <div ref="chartContainer3" style="width: 100%; height: 400px;"></div>
        </el-card>
      </el-col>

      <!-- 日历 -->
      <el-col :xs="24" :sm="12">
        <el-calendar v-model="value"></el-calendar>
      </el-col>
    </el-row>
  </div>
  <!-- 第一行排版 -->

</template>

<script setup>
import { ref, onMounted } from 'vue';
import { useBillingStatsStore } from "@/store/billingStats";
import { useAppointmentStatsStore } from "@/store/appointmentStats";
import * as echarts from 'echarts';


// 使用 ref 绑定 DOM 容器
const chartContainer = ref(null);
const chartContainer2 = ref(null);
const chartContainer3 = ref(null);
onMounted(() => {
  // 确保容器已挂载
  if (chartContainer.value) {
    // 初始化 ECharts 实例
    const chartInstance = echarts.init(chartContainer.value);

    // 设置图表配置
    const chartOptions = {
      title: {
                text: '今日预约情况',
                left: 'center',
                top: '20px',
                textStyle: {
                    fontSize: 18
                }
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: 'bottom',
                data: ['今日预约', '已就诊', '已收款', '未到']
            },
            series: [{
                name: '预约数据',
                type: 'pie',
                radius: ['40%', '70%'], // 内外半径，形成环形
                avoidLabelOverlap: false,
                label: {
                    show: true,
                    position: 'outside',
                    formatter: '{b}: {c} 人\n({d}%)' // 显示名称、数值和百分比
                },
                emphasis: {
                    label: {
                        show: true,
                        fontSize: '16',
                        fontWeight: 'bold'
                    }
                },
                labelLine: {
                    show: true
                },
                data: [{
                        value: 14,
                        name: '今日预约'
                    },
                    {
                        value: 5,
                        name: '已就诊'
                    },
                    {
                        value: 7,
                        name: '已收款'
                    },
                    {
                        value: 2,
                        name: '未到'
                    }
                ]
            }]
    };

    // 配置并渲染图表
    chartInstance.setOption(chartOptions);
  }

  if (chartContainer2.value) {
    // 初始化 ECharts 实例
    const chartInstance2 = echarts.init(chartContainer2.value);

    // 设置图表配置
    const chartOptions2 = {
      title: {
                text: '今日收银记录',
                left: 'center',
                top: '20px',
                textStyle: {
                    fontSize: 18
                }
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: 'bottom',
                data: ['今日已收', '待收费', '预计收费', '未收费']
            },
            series: [{
                name: '预约数据',
                type: 'pie',
                radius: ['40%', '70%'], // 内外半径，形成环形
                avoidLabelOverlap: false,
                label: {
                    show: true,
                    position: 'outside',
                    formatter: '{b}: {c} 元\n({d}%)' // 显示名称、数值和百分比
                },
                emphasis: {
                    label: {
                        show: true,
                        fontSize: '16',
                        fontWeight: 'bold'
                    }
                },
                labelLine: {
                    show: true
                },
                data: [{
                        value: 70,
                        name: '今日已收'
                    },
                    {
                        value: 20,
                        name: '待收费'
                    },
                    {
                        value: 100,
                        name: '预计收费'
                    },
                    {
                        value: 10,
                        name: '未收费'
                    }
                ]
            }]
    };

    // 配置并渲染图表
    chartInstance2.setOption(chartOptions2);
  }

  if (chartContainer3.value) {
    // 初始化 ECharts 实例
    const chartInstance3 = echarts.init(chartContainer3.value);

    // 设置图表配置
    const chartOptions3 = {
      title: {
                text: '库存统计',
                left: 'center',
                top: '20px',
                textStyle: {
                    fontSize: 18
                }
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: 'bottom',
                data: ['药品', '工具', '预警']
            },
            series: [{
                name: '预约数据',
                type: 'pie',
                radius: ['40%', '70%'], // 内外半径，形成环形
                avoidLabelOverlap: false,
                label: {
                    show: true,
                    position: 'outside',
                    formatter: '{b}: {c} 个\n({d}%)' // 显示名称、数值和百分比
                },
                emphasis: {
                    label: {
                        show: true,
                        fontSize: '16',
                        fontWeight: 'bold'
                    }
                },
                labelLine: {
                    show: true
                },
                data: [{
                        value: 20,
                        name: '药品'
                    },
                    {
                        value: 15,
                        name: '工具'
                    },
                    {
                        value: 2,
                        name: '预警'
                    }
                ]
            }]
    };

    // 配置并渲染图表
    chartInstance3.setOption(chartOptions3);
  }

});



// 初始化 value 为当前日期
const value = ref(new Date());

// 获取 billingStats 实例
const billingStats = useBillingStatsStore();
const appointmentStats = useAppointmentStatsStore();
// 页面加载时调用数据获取方法
onMounted(() => {
  billingStats.fetchTodayStats();
  appointmentStats.fetchTodayStats();
});
</script>

<style scoped lang="scss">
.responsive-card {
  width: 100%;
  max-width: 1200px;
  margin: auto;
  padding: 20px;
  box-sizing: border-box;
  border: 1px solid gray;
}

.card-content {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-top: 20px;
}

.stat-item {
  width: 48%;
  text-align: center;
}

.card-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 10px;
}

.stat-box {
  padding: 10px;
  border: 1px solid #ddd;
  text-align: center;
}

.header {
  font-size: 14px;
}

.content {
  font-size: large;
}
</style>
