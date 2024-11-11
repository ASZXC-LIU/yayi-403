<template>
  <!-- 第一行排版 -->
  <el-row class="tac" style="height: 150px; background-color: red;">
    <!-- 第一列 -->
    <el-col :span="12">
      <div
        style="max-width: 1200px; width: 100%;height: 150px; margin: 0 auto; flex-wrap: wrap; justify-content: space-between; align-items: center; background-color: gray;">
        <!-- 卡片 -->
        <el-card style="width: 98%; height: 130px;  position: relative; overflow: hidden;border: 1px solid gray;margin: 0 auto;">
          <div style="margin: 0 20px 0 20px;">
            概括:
            
          </div>
          <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #8a2e3b; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">7</h2>
        </el-card>
        
        <!-- <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
           新增预约:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #375830; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">2</h2>
          </div>
        </el-card>
        
        <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
            今日未就诊:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color:#145b7d; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">3</h2>
          </div>
        </el-card> -->
        
        
        

      </div>
    </el-col>
    <!-- 第二列 -->
    <el-col :span="6">
      <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
            今日已就诊:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #4f5555; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">1</h2>
          </div>
        </el-card>
        
        <!-- <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
            库存预警:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #525f42; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px; color: red;">5</h2>
          </div>
        </el-card>
        
        <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
            待收款:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #494e8f; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">0</h2>
          </div>
        </el-card> -->
    </el-col>
    <!-- 第三列 -->
    <el-col :span="6">
      <el-card style="width: 150px; height: 80px; margin: 10px; position: relative; overflow: hidden;">
          <div>
            已收款:
            <div
              style="position: absolute; top: -15px; right: -22px; width: 50px; height: 50px; background-color: #4e72b8; border-radius: 46%;">
              <el-icon style="position: absolute; top: 30px; right: 20px; transform: translate(-50%, -50%);">
                <icon-menu />
              </el-icon>
            </div>
            <br>
            <h2 style="margin: 0px;">8</h2>
          </div>
        </el-card>
    </el-col>




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
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }
}
</style>
