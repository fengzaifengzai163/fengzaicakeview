<template>
    <div class="order-page">
        <!-- 顶部导航栏开始 -->
        <header>
            <mt-header title="购物车">
                <router-link slot="left" to="/chome">
                    <mt-button  icon="back"></mt-button>
                </router-link>
                <div slot="right">{{this.$store.state.userInfo.username}}</div>
            </mt-header>
        </header>
        <!-- 顶部导航栏结束 -->
        <!-- 列表模板开始 -->
        <div class="order-ctn">
            <div class="choose checked">
                <a >
                    <img src="../assets/Ccommon/choose_enabled.png" alt="">
                </a>
            </div>
            <div class="goods-ctn">
                <a >
                    <img src="../assets/images/details/101.jpg" alt="">
                </a>
            </div>
            <div class="text-ctn">
                <div class="title">
                    <div>网红经典唯美火烈鸟生日蛋糕</div>
                </div>
                <div class="price-ctn">
                    <span>售价：￥</span>
                    <span>299</span>
                </div>
                <div class="num">
                    <div class="num-ctn">
                        <div>
                            <mt-button type="default" size="small" class="defaultclass">-</mt-button>
                        </div>
                        <div class="count">
                            <span>1</span>
                        </div>
                        <div>
                            <mt-button type="default" size="small" class="defaultclass">+</mt-button>
                        </div>
                        </div>
                    <div class="delete">
                        <a>
                            <img src="../assets/Ccommon/dustbin.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 列表模板结束 -->
        <!-- 底部结算行开始 -->
        <!-- 底部结算行开始 -->
        <div class="account-ctn">
            <div class="account-choose allChecked">
                <a >
                    <img src="../assets/Ccommon/choose_enabled.png" alt="">
                </a>
            </div>
            <div class="account-alltext">全选</div>
            <div class="account-price">
                <span>合计:</span>
                <span class="price-size">￥</span>
                <span class="price-size allprice">299</span>
            </div>
            <div class="account-button">
                <mt-button type="primary" class="primaryclass">结算</mt-button>
            </div>
        </div>
        <!-- 底部选项卡结束 -->
    <mt-tabbar v-model="selectedTab" fixed>
        <mt-tab-item id="index">
            <a class="jump" @click="tochome">
                <div>
                    <div>
                    <img
                    src="../assets/common/index_enabled.png"
                    alt=""
                    slot="icon"
                    v-if="selectedTab == 'index'"
                    />
                    <img
                    src="../assets/common/index_disabled.png"
                    alt=""
                    slot="icon"
                    v-else
                    />
                    </div>
                    <p>首页</p> 
                </div> 
            </a>
        </mt-tab-item>
        <mt-tab-item id="cart">
            <a class="jump" >
                <div>
                    <div>
                        <img
                        src="../assets/Ccommon/cart_enabled.png"
                        alt=""
                        slot="icon"
                        v-if="selectedTab == 'cart'"
                        />
                        <img
                        src="../assets/Ccommon/cart_disenabled.png"
                        alt=""
                        slot="icon"
                        v-else
                        />
                    </div>
                    <p>购物车</p>
                </div>
            </a> 
        </mt-tab-item>    
        <mt-tab-item id="me">
            <a class="jump" @click="tocme">
                <div>
                    <div>  
                    <img
                    src="../assets/common/me_enabled.png"
                    alt=""
                    slot="icon"
                    v-if="selectedTab == 'me'"
                    />
                    <img src="../assets/common/me_disabled.png" alt="" slot="icon" v-else />
                    </div>
                    <p>我的</p>
                </div>
            </a>       
        </mt-tab-item>
        </mt-tabbar>
    <!-- 底部选项卡结束 -->
    </div>
    
    
</template>
<style scoped>

.mint-header{
  /* 视情况 */
  height: 50px;
  font-size: 16px;
  color: black;
  background-color: #fff !important;
}
.order-page{
    height: 100vh;
    background-color: #f6f6f6;
}
.kong{
    width: 100%;
    height: 20px;
}
.order-ctn{
    width: 95%;
    height: 120px;
    border-radius: 10px;
    margin-left: 9px;
    margin-top: 20px;
    background-color: #fff;
    box-shadow: 0 1px 3px rgba(26,26,26,.1);
    display: flex;
}
.choose{
    width: 7%;
    height: 100%;
    padding: 0 .5rem;  
}
.choose > a{
    display: block;
    width: 19px;
    height: 20px;
    margin-top: 2.9rem;
}
.choose > a > img{
    width: 100%;
    height: 100%;
}


.goods-ctn{
    width: 30%;
    height: 100%;
}
.goods-ctn > a{
    display: block;
    width: 90px;
    height: 90px;
    margin-top: .9rem;
    border: 1px solid #f6f6f6;
}
.goods-ctn > a > img{
    width: 100%;
    height: 100%;
}

.text-ctn{
    margin-top: .9rem;
}
.title{
    font-size: 1rem;
    line-height: 1rem;
    color: #666;
    margin-bottom: .12rem;
    margin-right: .3rem;
    align-items: flex-start;
    text-align: left;
}

.price-ctn{
    font-size: .9rem;
    padding: .2rem 0;
    color: #999;
    margin-bottom: .2rem;
}

.num-ctn{
    display: flex;
}
.defaultclass{
    font-size: 2.3rem;
    line-height: 2rem;
    
}
.count{
    padding: .5rem .5rem;
}
.delete{
    float: right;
    margin-right: .5rem;
    margin-top: -1.6rem;
}
.delete > a{
    display: block;
    width: 1.5rem;
    height: 1.5rem;
}
.delete > a > img{
    width: 100%;
    height: 100%
}

.account-ctn{
    position: fixed;
    bottom: 3.5rem;
    background-color: #fff;
    width: 100%;
    height: 4rem;
    border-top: 1px solid rgba(104, 101, 101, .3);
    border-bottom: 1px solid rgba(104, 101, 101, .3);;
    display: flex;
}
.account-choose{
    width: 7%;
    height: 100%;
    padding: 0 .3rem;  
}
.account-choose > a{
    display: block;
    width: 19px;
    height: 20px;
    margin-top: 1.5rem;
}
.account-choose > a > img{
    width: 100%;
    height: 100%;
}
.account-alltext{
    color: #999;
    font-size: 1.1rem;
    padding: 1.6rem .1rem;
}
.account-price{
    margin-left: 3.3rem;
    width: 40%;
    padding: 1.6rem 0;
}
.account-price > span{
    font-size: 1.2rem;
}
.price-size{
    font-size: 1.8rem;
    color: #f00;
}
.account-button{
    padding: .7rem 0;
}
.primaryclass{
    width: 6rem;
    border-radius: 1.2rem;
}

@import '../assets/repeatCSS/jump.css';
</style>
<script>
export default {
    data(){
        return{
            selectedTab:'cart'
        }
    },
    methods:{
        tocme(){
            this.$router.push({ path:'/cme' });
        },
        tochome(){
            this.$router.push({ path:'/chome' });
        },
    }
}
</script>