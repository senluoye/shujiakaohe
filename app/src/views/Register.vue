<template>
    <div id="registerapp">
        <div class="register-from">
            <div class="register-word">
                欢迎注册
            </div>
            <v-zhuce></v-zhuce>
            <div>
                <span class="lijidenglu">
                    已经拥有账号？
                    <router-link to='/login'>立即登陆</router-link>
                </span>
            </div>
        </div>
    </div>
</template>

<script>
import zhuce from '../components/zhuce';

export default {
    components:{
        'v-zhuce' :zhuce
    }
}
</script>

<style scoped>
#registerapp{
    position:relative;
    width: 100vw;
    height: 100vh;
    background-size: cover;
}
.register-from{
    position:absolute;
    width: 430px;
    height: 480px;
    box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
    left: 50%;
    margin-left:-215px;
    margin-top: 100px;
}
.demo-ruleForm{
    width: 380px;
    margin:0 auto;
}
.register-word{
    height: 80px;
    font-family:"Hiragino Sans GB";
    font-size: 20px;
    display: -moz-box;/*兼容Firefox*/
    display: -webkit-box;/*兼容FSafari、Chrome*/
    -moz-box-align: center;/*兼容Firefox*/
    -webkit-box-align: center;/*兼容FSafari、Chrome */
    -moz-box-pack: center;/*兼容Firefox*/
    -webkit-box-pack: center;/*兼容FSafari、Chrome */
}
.lijidenglu{
    margin-left: 220px;
}
.kuaijie{
    width: 430px;
    height: 140px;
}
.kuaijieone{
    text-align: center;
    font-size: 20px;
    margin-top: 20px;
}
.kuaijietwo{
    width: 270px;
    height: 50px;
    margin: 0 auto;
    margin-top: 30px;
}
.weibo{
    margin-left: 75px;
}
.weixin{
    float: right;
}
</style>