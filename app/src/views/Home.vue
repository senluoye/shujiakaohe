<template>
    <div id="app">
        <el-row>
            <el-col :span="24">
                <div class="grid-content bg-purple-dark">
                     <el-button
                     type="primary" plain
                     class="home-button"
                     @click="goLogin"
                     v-if="!isLogin">
                        登陆
                     </el-button>
                    <el-button
                     type="primary" plain
                     class="home-button"
                     v-else>
                        {{this.$store.state.software.users.username}}
                     </el-button>

                     <el-button
                     type="primary" plain
                     class="home-button"
                     @click="goRegister">
                        注册
                     </el-button>
                </div>
            </el-col>
        </el-row>

        <div class="top-two">
            <div class="ss">
                <img src="https://store-cdn.lizhi.io/views/lizhi_new/javascript/assets/img/digitalychee@3x.png?v=30" alt="" class="sss">
            </div>
            <div class="home-sousuo">
                 <el-input
            placeholder="请输入内容"
            prefix-icon="el-icon-search"
            v-model="input2"
            class="home-input">
            </el-input>
            <el-button type="primary" icon="el-icon-search">搜索</el-button>
            </div>
            <div class="gouwuche">
                <el-button plain @click="gouevent">我的购物车</el-button>
            </div>
        </div>

<!-- 导航 -->
        <div class="daohanglan">
            <div class="daohanglan1">
                <el-menu
                :default-active="this.$route.path"
                router mode="horizontal"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                @close="handleClose"
                text-color="black"
                active-text-color="#ffd04b">
                    <el-menu-item v-for="(item,i) in navList" :key="i" :index="item.name">
                        <template slot="title">
                            <i class="el-icon-s-platform"></i>
                            <span> {{ item.navItem }}</span>
                        </template>
                    </el-menu-item>
                </el-menu>
            </div>

        <!-- 轮播图 -->
<!--            <div class="home-lunbotu">-->
<!--                <v-lunbotu></v-lunbotu>-->
<!--            </div>-->
            <router-view class="menu-right"/>

        <!-- 网页结尾 -->
            <div class="jiewei">
                <div class="shang">
                    <div class="shangzuo">
                        <p class="shangzuoyi">数码荔枝</p>
                        <p>正版商城</p>
                        <p>版权声明</p>
                        <p>工作职位</p>
                        <p>招募作者</p>
                    </div>
                    <div class="shangzuo">
                        <p class="shangzuoyi">联系我们</p>
                        <p>厂商合作</p>
                        <p>渠道市场</p>
                        <p>投诉建议</p>
                    </div>
                    <div class="shangzuo">
                        <div v-for="(item,index) in imgs" :key="index" class="tupian">
                            <img :src="item.src" alt="" class="tupian">
                        </div>
                    </div>
                </div>
                <div class="ddd">
                    <img src="https://store-cdn.lizhi.io/views/lizhi_new/javascript/assets/img/digitalychee@3x.png?v=30" alt="" class="dddd">
                </div>
            </div>
        </div>

    </div>
</template>

<script>
import lunbotu from '../components/lunbotu'
export default {
    name: 'Home',
    data(){
        return {
            input2:'',
            navList:[
            {name:'/shouye',navItem:'首页'},
            {name:'/win',navItem:'Win专区'},
            {name:'/mac',navItem:'Mac专区'},
            {name:'/phone',navItem:'手机专区'},
            {name:'/huiyuanchongzhi',navItem:'会员充值'},
            {name:'/guochanruanjian',navItem:'国产软件'}
            ],
            imgs:[
                {
                    index:0,
                    src: "https://static.easyicon.net/preview/116/1164797.gif"

                },
                {
                    index:1,
                    src: "https://static.easyicon.net/preview/116/1164771.gif"

                },
                {
                    index:2,
                    src: "https://static.easyicon.net/preview/116/1164783.gif"

                },
                {
                    index:3,
                    src: "https://static.easyicon.net/preview/116/1164661.gif"

                }
            ]

        }
    },
    methods:{
        goLogin:function(){
            this.$router.push({
                path:'/login'
            })
        },
        goRegister:function(){
            this.$router.push({
                path:'/register'
            })
        },
        handleOpen(key, keyPath) {
            console.log(key, keyPath);
        },
        handleClose(key, keyPath) {
            console.log(key, keyPath);
        },
        gouevent:function(){
            this.$router.push({
                path:'/gouwuche'
            })
        }
    },
    components:{
        'v-lunbotu':lunbotu
    },
    mounted:function(){
        console.log(this)
    },
    computed:{
        isLogin(){
            return this.$store.state.software.islogin
        }
    }
}
</script>

<style scoped>
  .grid-content {
    min-height: 40px;
    background: #ECF5FF;
  }
.home-button {
    margin-left: 70vw;
    border:none
}
.top-two{
    height: 100px;
    width: 1100px;
    margin: 0 auto;
    margin-top: 10px;
}
.home-sousuo{
    width: 520px;
    float: left;
    margin-left: 300px;
}
.home-input{
    width: 400px;
    margin-top: 20px;
}
.gouwuche{
    float: right;
    margin-top: 20px;
}
.daohanglan{
    width: 1100px;
    margin:0 auto;
}
.daohanglan1{
    width: 780px;
    margin:0 auto;
}
.home-lunbotu{
    width: 100%;
    height: 270px;
}
.jiewei{
    margin:0 auto;
    margin-top: 20px;
    width: 740px;
    height: 300px;
}
.shangzuo {
    width: 240px;
    height: 100%;
    float: left;
}
.shang{
    height: 190px;
}
.shangzuoyi{
    font-size: 18px;
}

.tupian{
    width: 38px;
    height: 38px;
    float: left;
    margin-right: 20px;
    margin-top: 20px;
}
.ddd{
    width: 100%;
    height: 67px;
}
.dddd{
    margin-left: 290px;
    margin-top: 40px;
    width: 160px;
    height: 100%;
}
.ss{
    float: left;
}
.sss{
    width: 160px;
    height: 67px;
}
</style>
