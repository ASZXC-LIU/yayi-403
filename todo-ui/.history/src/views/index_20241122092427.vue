<template>
  <!-- 页面布局 -->
  <el-row class="tac1" style="height: 300px; background-color: red;">
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
  </el-row>

  <!-- 日历固定在屏幕右下角 -->
  <div class="calendar-container">
    <el-calendar>
      <template
        slot="dateCell"
        slot-scope="{date, data}">
        <p :class="data.isSelected ? 'is-selected' : ''">
          {{ data.day.split('-').slice(1).join('-') }} {{ data.isSelected ? '✔️' : ''}}
        </p>
      </template>
    </el-calendar>
  </div>
</template>

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

  .is-selected {
    color: #1989FA;
  }
}

.calendar-container {
  position: fixed;
  bottom: 20px; /* 距离屏幕底部 20px */
  right: 20px; /* 距离屏幕右侧 20px */
  width: 300px; /* 设置日历宽度 */
  box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.2); /* 添加阴影效果 */
  border: 1px solid #ddd; /* 添加边框 */
  border-radius: 8px; /* 圆角 */
  background-color: #fff; /* 白色背景 */
  padding: 10px; /* 内边距 */
  z-index: 9999; /* 保证日历浮动在最上层 */
}
</style>
