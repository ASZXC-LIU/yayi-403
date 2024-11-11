<template>
  <!-- 第一行排版 -->
  <el-row class="tac1" style="height: 150px; background-color: red;">
    <!-- 第一列 -->
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%;height: 150px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 147px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            今日到访
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;">
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
          </div>
        </el-card>
      </div>
    </el-col>
    <!-- 第二列 -->
    <el-col :span="6">
      <div
        style="max-width: 1200px; width: 100%;height: 150px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 147px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            客户
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;">
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
        style="max-width: 1200px; width: 100%;height: 150px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card
          style="width: 99%; height: 147px;  position: relative; overflow: hidden;border: 1px solid gray;margin:  auto;">
          <div style="margin: 0 20px 0 20px; ">
            供应商
          </div>
          <el-divider />
          <div style="display: flex; justify-content: space-between;">
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
  <!-- 大模块 -->
  <el-row class="tac1" style="height: 1000px; background-color: lightblue;">
    <el-col :span="12">
      <div
        style="max-width: 1200px;  height: 1000px; margin: 0 auto; flex-wrap: wrap; justify-content: center; align-items: center; background-color: lightblue;">
        <!-- 大模块内容 -->
        <el-card
          style="width: 99%; height: 350px; position: relative; overflow: hidden; border: 1px solid gray; margin: auto;">
          <div style="margin: 20px;">
            <h2>大模块标题</h2>
            <p>这里是大模块的内容，可以显示详细的数据或图表。</p>
            <!-- 示例数据 -->
            <ul>
              <li>数据1: 100</li>
              <li>数据2: 200</li>
              <li>数据3: 300</li>
            </ul>
          </div>
        </el-card>
      </div>
    </el-col>
    <el-col :span="12"></el-col>
  </el-row>
</template>

<script setup name="Index">
const version = ref('3.8.7')
import {
  Document,
  Menu as IconMenu,
  Location,
  Setting,
} from '@element-plus/icons-vue'
// const handleOpen = (key: string, keyPath: string[]) => {
//   console.log(key, keyPath)
// }
// const handleClose = (key: string, keyPath: string[]) => {
//   console.log(key, keyPath)
// }
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
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
}
</style>
