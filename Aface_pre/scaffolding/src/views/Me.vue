<template>
    <div class="mebg">
        <!-- 顶部个人头像及账号名称开始 -->
        <div class="kong"></div>
        <div class="top-container">
            <div class="img">
                <img src="../assets/Ccommon/avatar_Ccommon.png" class="imgbg" alt="">
            </div>
            <div class="name">
                <p>登录/注册</p>
            </div>
        </div>     
        <!-- 顶部个人头像及账号名称结束 -->
        <div class="middle-kong"></div>
        <!-- 我的收藏开始 -->
        <div id="mycollect-ctn" class="block-ctn">
            <div class="smallbg">
                <div class="titled"></div>
                <p class="titlep">我的收藏</p>
                <!-- 后续优化 -->
                <!-- <div></div> -->
                <ul class="mycollect-flex">
                    <li><img src="../assets/Ccommon/cakeavatar1.jpg" alt=""></li>
                    <li><img src="../assets/Ccommon/cakeavatar2.jpg" alt=""></li>
                    <li><img src="../assets/Ccommon/cakeavatar3.jpg" alt=""></li>
                </ul>
            </div>
        </div>
        <!-- 我的收藏结束 -->
        <div class="middle-kong"></div>
        <!-- 我的红包开始 -->
        <div id="myvip-ctn" class="block-ctn">
            <div class="smallbg2">
                <div class="titled"></div>
                <p class="titlep">我的红包
                    <span>></span>
                </p>
            </div>
        </div>
        <!-- 我的红包结束 -->
        <div class="middle-kong"></div>
        <!-- 我的地址开始 -->
        <div id="myaddress-ctn" class="block-ctn">
            <div class="smallbg2">
                <div class="titled"></div>
                <p class="titlep">我的地址
                    <span>></span>
                </p>
            </div>
        </div>
        <!-- 我的地址结束 -->
        <!-- 底部选项卡开始 -->
        <mt-tabbar v-model="selectedTab" fixed>
        <mt-tab-item id="index">
            <a class="jump" style="display:block" @click="tochome">
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
            <a class="jump" @click="tocorder">
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
            <a class="jump">
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
.mebg{
    background: #f6f6f6;
    height: 100vh;
}
.kong{
    width: 100%;
    height: 1px;
}
.top-container{
    width: 375px;
    height: 60px;
    margin-top: 20px;
    display: flex;
}
.img{
    width: 65px;
    height: 80px;
    margin-left: 20px;
}
.imgbg{
    width: 60px;
    height: 60px;
}
.name{
    margin-left: 10px;
    margin-top: 19px;
}

.middle-kong{
    width: 375px;
    height: 25px;
}

#mycollect-ctn{
    width: 375px;
    height: 130px;
}

.smallbg{
    background-color: #fff;
    width: 350px;
    height: 140px;
    border-radius: 20px;
    margin: 0 auto;
}

.titled{
    width: 100%;
    height: 10px;
}

.titlep{
    margin-left: 15px;
    margin-top: 6px;
    font-size: 16px;
    font-weight: 600;
}

.mycollect-flex{
    display: flex;
}
.mycollect-flex > li > img{
    width: 90px;
    height: 90px;
    margin-left: 20px;
    margin-top: 7px;
    border-radius: 8px;
}

#myvip-ctn{
    width: 375px;
    height: 50px;
}
.smallbg2{
    background-color: #fff;
    width: 350px;
    height: 50px;
    border-radius: 20px;
    margin: 0 auto;
}
.smallbg2 > p > span{
    margin-left: 240px;
}

#myaddress-ctn{
    width: 375px;
    height: 50px;
    margin-top: -10px;
}

@import '../assets/repeatCSS/jump.css';



</style>
<script>
export default {
    data(){
        return{
            selectedTab:'me'
        }
    },
    methods:{
        tochome(){
            this.$router.push({ path:'/' });
        },
        tocorder(){
            this.$router.push({ path:'/order' });
        }
    }
}
</script>