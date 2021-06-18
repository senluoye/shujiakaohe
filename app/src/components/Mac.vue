<template>
  <div>
    <div class="mianbaoxie">
      <el-breadcrumb separator-class="el-icon-arrow-right" class="aa">
        <el-breadcrumb-item :to="{ path: '/shouye' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>全部商品</el-breadcrumb-item>
        <el-breadcrumb-item>Mac专区</el-breadcrumb-item>
      </el-breadcrumb>

    </div>
    <div class="toutou">
      <el-col :span="24">
        <el-card shadow="always">
          所有商品
        </el-card>
      </el-col>
    </div>
    <div class="shangpin">
      <el-row>
        <el-col :span="6" v-for="project in currentPageList" :key="project.software_id">
          <div @click="GoumaiEvent(project.software_id)">
            <el-card shadow="hover" class="cards">
              <el-row>
                <!--                    空白内容，目的只是为了让图片居中-->
                <el-col :span="8">
                  <div class="grid-content bg-white"></div>
                </el-col>
                <el-col :span="8">
                  <el-image style="width: 100px; height: 100px" :src="project.software_picurl"></el-image>
                </el-col>
                <el-col :span="8">
                  <div class="grid-content bg-white"></div>
                </el-col>
              </el-row>
              <div style="margin-top: 20px">
                {{ project.software_name }}
              </div>
              <div style="margin-top: 20px;color: #ff0000; font-weight: bold">
                ¥ {{ project.software_discount }}
              </div>
            </el-card>
          </div>
        </el-col>
      </el-row>
    </div>
    <div class="block">
      <el-pagination
          background
          layout="prev, pager, next"
          @current-change="handleCurrentChange"
          :page-size="12"
          :total="softwareList.length">
      </el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      currentPageList:[]
    }
  },
  methods: {
    GoumaiEvent: function (software_id) {
      this.$store.dispatch("getSoftwareDetail",  software_id);
      setTimeout(() => {
        this.$router.push({
          path: '/goumai'
        })
      },100)
    },
    handleCurrentChange(val) {
      this.currentPageList =  this.softwareList.slice((val-1)*12,val*12);
      console.log(val);
      console.log(this.currentPageList);
    }
  },
  computed: {
    softwareList() {
      this.currentPageList = this.$store.state.software.softwareList.slice(0,12);
      return this.$store.state.software.softwareList;
    }
  },
  mounted() {
    this.$store.dispatch("getSoftwaresOnMacOS");
  }
}
</script>

<style scoped>
.aa {
  font-size: 13px;
}

.shangpin {
  width: 1100px;
}

.toutou {
  height: 80px;
  margin-top: 30px;
  margin-bottom: 30px;
}

.shangpin {
  width: 100%;
  height: 1000px;
}

.cards {
  width: 260px;
  height: 270px;
  margin-bottom: 20px;
}

.bg-white {
  background: #FFFFFF;
}

.grid-content {
  min-height: 36px;
}


</style>
