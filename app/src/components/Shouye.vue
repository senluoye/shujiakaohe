<template>
  <div class="shouye">
    <v-lunbotu></v-lunbotu>
    <div class="shouyeone">
      <div class="shouye-xianshi">限时优惠</div>
      <div class="s-z">
        <div class="ss-z"></div>
        <div class="shouye-zuo">
          <el-card shadow="hover" class="cardone">
            <img src="https://store-cdn.lizhi.io/views/lizhi_new/javascript/assets/img/img_more.png?v=30" class="sixpng">
          </el-card>
        </div>
        <div class="shouye-you">
          <el-row>
            <!--            discountList为从后端获取的折扣软件列表--> 
            <el-col :span="11" v-for="project in discountList" :key="project.software_id" :offset="1">
              <div @click="GoumaiEvent(project.software_id)">
                <el-card shadow="hover" class="cardtwo">
                  <el-row>
                    <el-col :span="8">
                      <!--                      图片链接-->
                      <el-image style="width: 100px; height: 100px" :src="project.software_picurl"></el-image>
                    </el-col>
                    <el-col :span="16">
                      <!--                      软件名称-->
                      {{ project.software_name }}
                      <el-row style="margin-top: 20px">
                        <el-col :span="6">
                          <!--                          软件优惠价，样式：红色字体，加粗-->
                          <span style="color: red; font-weight: bold">
                           ¥ {{ project.software_discount }}
                          </span>
                        </el-col>
                        <!--                        软件原价，样式：灰色字体，中划线-->
                        <span style="text-decoration: line-through; color: gray">¥ {{ project.software_price }}
                        </span>
                      </el-row> 
                    </el-col>
                  </el-row>
                </el-card>
              </div>
            </el-col>
          </el-row>
        </div>
      </div>
    </div>
    <div class="shouyetwo">
      <div class="shouye-xianshi">精选推荐</div>
      <div class="twotwo">
        <div class="ss-z"></div>
        <div class="ss-zz">
          <el-row>
            <el-col :span="6" v-for="project in recommendList" :key="project.software_id">
              <div @click="GoumaiEvent(project.software_id)">
                <el-card shadow="hover" class="cardthree">
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
      </div>
    </div>
    <div class="hh">
      <v-lunbotu2></v-lunbotu2>
    </div>
    <div class="xinpinone">
      <div class="xinpinone-one">
        <el-breadcrumb separator=">" class="mianbaoxie">
          <el-breadcrumb-item>新品上架</el-breadcrumb-item>
          <el-breadcrumb-item :to="{ path: '/mac' }">
            <span style="cursor:pointer">Mac平台</span>
          </el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div>
        <el-row>
          <el-col :span="6" v-for="project in macList" :key="project.software_id">
            <div @click="GoumaiEvent(project.software_id)">
              <el-card shadow="hover" class="cardfour">
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
    </div>
    <div class="xinpinone">
      <div class="xinpinone-one">
        <el-breadcrumb separator=">" class="mianbaoxie">
          <el-breadcrumb-item>新品上架</el-breadcrumb-item>
          <el-breadcrumb-item :to="{ path: '/win' }">
            <span style="cursor:pointer">Win平台</span>
          </el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div>
        <el-row>
          <el-col :span="6" v-for="project in winList" :key="project.software_id">
            <div @click="GoumaiEvent(project.software_id)">
              <el-card shadow="hover" class="cardfour">
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
    </div>
  </div>
</template>

<script>
import lunbotu2 from '../components/lunbotu2'
import lunbotu from '../components/lunbotu'

export default {
  components: {
    'v-lunbotu2': lunbotu2,
    'v-lunbotu': lunbotu
  },
  data() {
    return {}
  },
  methods: {
    GoumaiEvent: function (software_id) {
      this.$store.dispatch("getSoftwareDetail",  software_id);
      setTimeout(() => {
        this.$router.push({
          path: '/goumai'
        })
      },100)
    }
  },
  computed: {
    //从Vuex中获取限时折扣列表
    discountList() {
      return this.$store.state.software.discountList;
    },
    //从Vuex中获取推荐列表
    recommendList() {
      return this.$store.state.software.recommendList;
    },
    winList() {
      return this.$store.state.software.winList;
    },
    macList() {
      return this.$store.state.software.macList;
    }
  },
  mounted() {
    //向后端发送请求，获取主页上的限时折扣、推荐等列表
    this.$store.dispatch("getHomePageSoftwares");
  }

}
</script>

<style scoped>
.shouye {
  width: 1100px;
}

.shouye-xianshi {
  font-size: 22px;
  margin-bottom: 24px;
  border-bottom-width: 2px;
  border-bottom-color: red;
}

.ss-z {
  width: 100%;
  height: 2px;
  background-color: red;
  margin-bottom: 8px;
}

.s-z {
  height: 605px;
  width: 100%;
}

.shouye-zuo {
  width: 250px;
  height: 600px;
  float: left;
}

.el-card1 {
  text-align: center;
}

.shouye-you {
  width: 850px;
  height: 600px;
  float: right;
}

.cardone {
  height: 550px;
}

.cardtwo {
  width: 400px;
  height: 165px;
  float: left;
  margin-right: 10px;
  margin-bottom: 27px;
}

.cardthree {
  width: 257px;
  height: 240px;
  margin-top: 6px;
  margin-bottom: 27px;
}

.sixpng {
  margin: 0 auto;
  width: 100%;
  height: 100%;
  margin-top: 150px;
}

.shouyetwo {
  height: 610px;
  width: 100%;
}

.xinpin {
  margin-top: 50px;
}

.mianbaoxie {
  font-size: 22px;
}

.xinpinone {
  margin-top: 40px;
  height: 320px;
  width: 100%;
}

.xinpinone-one {
  margin-bottom: 15px;
}

.cardfour {
  width: 260px;
  height: 270px;
}

.bg-white {
  background: #FFFFFF;
}

.grid-content {
  min-height: 36px;
}
.hh{
  margin-top: 10px;
}
</style>
