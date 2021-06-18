import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Shouye from '../components/Shouye.vue'
import Phone from '../components/Phone.vue'
import Chengxuyuan from '../components/Chengxuyuan.vue'
import Guochanruanjian from '../components/Guochanruanjian.vue'
import Huiyuanchongzhi from '../components/Huiyuanchongzhi.vue'
import Mac from '../components/Mac.vue'
import Win from '../components/Win.vue'
import gou from '../components/gouwuche.vue'
import goumai from '../components/goumai.vue'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
    return originalPush.call(this, location).catch(err => err)
}

Vue.use(VueRouter)

const routes = [{
        path: '/',
        redirect: '/shouye',
        name: 'Home',
        component: Home,
        children: [{
                path: '/shouye',
                name: 'Shouye',
                component: Shouye
            },
            {
                path: '/chengxuyuan',
                name: 'Chenxuyuan',
                component: Shouye
            },
            {
                path: '/huiyuanchongzhi',
                name: 'Huiyuanchongzhi',
                component: Huiyuanchongzhi
            },
            {
                path: '/phone',
                name: 'Phone',
                component: Phone
            },
            {
                path: '/mac',
                name: 'Mac',
                component: Mac
            },
            {
                path: '/win',
                name: 'Win',
                component: Win
            },
            {
                path: '/chengxuyuan',
                name: 'Chengxuyuan',
                component: Chengxuyuan
            },
            {
                path: '/guochanruanjian',
                name: 'Guochanruanjian',
                component: Guochanruanjian
            },
            {
                path: '/gouwuche',
                name: 'Gouwuche',
                component: gou
            },
            {
                path: '/goumai',
                name: 'Goumai',
                component: goumai
            }
        ]
    },
    {
        path: '/login',
        name: 'Login',
        component: Login
    },
    {
        path: '/register',
        name: 'Register',
        component: Register
    },

]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

export default router