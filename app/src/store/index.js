import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import da from "element-ui/src/locale/lang/da";

Vue.use(Vuex)

const moduleSoftware = {
    state: {
        //软件列表
        discountList: [],
        recommendList: [],
        winList: [],
        macList: [],
        softwareList: [],
        softwareDetail: {},
        priceList: [],
        cartList: [],
        user: {
            email: "",
            username: '',
            password: ''
        },
        islogin: false
    },
    mutations: {
        setDiscountList(state, data) {
            state.discountList = data;
        },
        setRecommendList(state, data) {
            state.recommendList = data;
        },
        setWinList(state, data) {
            state.winList = data;
        },
        setMacList(state, data) {
            state.macList = data;
        },
        setSoftwareList(state, data) {
            state.softwareList = data;
        },
        setSoftwareDetail(state, data) {
            state.softwareDetail = data;
        },
        setPriceList(state, data) {
            state.priceList = data;
        },
        setCartList(state, data) {
            state.cartList = data;
        }
    },
    actions: {
        //获取主页应该加载的列表
        getHomePageSoftwares(context) {
            axios.get("/api/getHomePageSoftwares", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setDiscountList", Array.from(json.discountList));
                    // 设置上面vuex的状态
                    context.commit("setRecommendList", Array.from(json.recommendList));
                    context.commit("setWinList", Array.from(json.winList));
                    context.commit("setMacList", Array.from(json.macList));
                })
            })
        },
        //获取Windows分区
        getSoftwaresOnWindows(context) {
            axios.get("/api/getSoftwaresOnWindows", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setSoftwareList", Array.from(json.data));
                })
            })
        },
        //获取macOS分区
        getSoftwaresOnMacOS(context) {
            axios.get("/api/getSoftwaresOnMacOS", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setSoftwareList", Array.from(json.data));
                })
            })
        },
        //获取手机分区
        getSoftwaresOnMobile(context) {
            axios.get("/api/getSoftwaresOnMobile", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setSoftwareList", Array.from(json.data));
                })
            })
        },
        //获取国产分区
        getSoftwaresMadeInChina(context) {
            axios.get("/api/getSoftwaresMadeInChina", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setSoftwareList", Array.from(json.data));
                })
            })
        },
        //获取会员充值分区
        getSoftwaresMemberRecharge(context) {
            axios.get("/api/getSoftwaresMemberRecharge", {
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    context.commit("setSoftwareList", Array.from(json.data));
                })
            })
        },

        //获取软件详细信息
        getSoftwareDetail(context, software_id) {
            axios.post("/api/getSoftwareDetail", {
                software_id: software_id,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    console.log(json);
                    context.commit("setSoftwareDetail", json.software);
                    context.commit("setPriceList", Array.from(json.price));
                }, 50)
            })
        },

        //获取购物车
        getShoppingCart(context, cart_user) {
            axios.post("/api/getShoppingCart", {
                cart_user: cart_user,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            }).then((json) => {
                setTimeout(() => {
                    console.log(json);
                    context.commit("setCartList", json.data);
                }, 50)
            })
        },

        //添加到购物车
        addToCart(context, cart) {
            axios.post("/api/addToCart", {
                cart_software: cart.cart_software,
                cart_softwarename: cart.cart_softwarename,
                cart_price: cart.cart_price,
                cart_count: cart.cart_count,
                cart_period: cart.cart_period,
                cart_picurl: cart.cart_picurl,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.data === 200)
                    return res.data;
            })
        },

        // 注册
        register(context, user) {
            console.log(user);
            axios.post("/api/register", {
                username: user.username,
                password: user.password,
                email: user.email,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200) {
                    console.log("返回的信息：");
                    console.log(res.data);
                    return res.data;
                }
            })
        },

        // 登陆
        register(context, user) {
            console.log(user);
            axios.post("/api/login", {
                username: user.username,
                password: user.password,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200) {
                    console.log("返回的信息：");
                    console.log(res.data);
                    return res.data;
                }
            })
        },

        //改变数量
        changeQuantity(context, cart) {
            axios.post("/api/changeQuantity", {
                cart_id: cart.id,
                cart_count: cart.count,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            })
        },

        //从购物车删除
        deleteFromCart(context, cart_id) {
            axios.post("/api/deleteFromCart", {
                cart_id: cart_id,
                headers: {
                    Accept: 'application/json',
                    "Content-Type": 'application/json'
                }
            }).then((res) => {
                if (res.status === 200)
                    return res.data;
            })
        }
    }
}

export default new Vuex.Store({
    modules: {
        software: moduleSoftware
    }
})