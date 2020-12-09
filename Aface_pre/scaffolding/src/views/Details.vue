<template>
    <div class="article">
        <div class="face-plate"
        v-infinite-scroll
        >
            <div class="toptest">
                <a class="topback" @click="tochome">
                    <i>
                        <img src="../assets/Ccommon/topback.png" alt="">
                    </i>
                </a>
                <img :src="articleInfo.image" alt="">
            </div>
            <!-- 正文区域开始 -->
            <div class="question">
                <!-- 标题开始 -->
                <div class="kong"></div>
                <div class="question-header">
                    <div class="question-header-title">
                    {{articleInfo.subject}}
                    </div>
                    <div class="question-header-datetime">
                    ￥{{articleInfo.created_at}}
                    <mt-button type="primary" class="first-primary" >+加入购物车</mt-button>
                    </div>
                </div>
                <!-- 标题结束 -->
                <!-- 内容开始 -->
                <div class="question-content">
                    <div class="description-title">商品详情</div>
                    <div class="description-content">
                        <div class="rich-title">商品描述</div>
                        <div class="rich-content" v-html="articleInfo.content">             
                        </div>
                    </div> 
                </div>
                <!-- 内容结束 -->
            </div>
            <!-- 正文区域结束 -->
        </div>
        
        <!-- 底部收藏结算开始 -->
        <div class="footer-ctn">
            <!-- <div>
                <a class="footer-backindex footer-a">
                    <i>
                        <img src="../assets/common/index_disabled.png" alt="">
                    </i>
                </a>
            </div> -->
            <div>
                <a class="footer-collect footer-a">
                    <i>
                        <img src="../assets/Ccommon/collect_disenabled.png" alt="">
                    </i>
                </a>
            </div>
            <div>
                <a class="footer-shoppingBox footer-a">
                    <i>
                        <img src="../assets/Ccommon/shopping_enabled.png" alt="">
                    </i>
                </a>
            </div>
            <div class="footer-kong"></div>
            <div class="footer-btn">
                <mt-button type="primary" @click="tocorder" class="footer-primary">去结算</mt-button>
            </div>
            
        </div>
        <!-- 底部收藏结算结束 -->
    </div>
</template>
<style scoped>

.face-plate{
    margin-bottom: 55px;
}

.toptest{
    width: 375px;
    height: 375px;
}
.toptest > img{
    width: 100%;
    height: 100%;
}
.topback{
    position: absolute;
    margin-top: 20px;
    margin-left: 20px;
    
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: #646464;
}
.topback > i{
    display: block;
    width: 18px;
    height: 18px;
    margin: 5px auto;
}
.topback > i > img{
    width: 100%;
    height: 100%;
}

.article{
    background: #f6f6f6;
    height: 100vh;
}
.question-header{
    width: 88%;
    margin: 0 auto;
    border-radius: 10px;
    padding: 10px;
    background: #fff;
    box-shadow: 0 1px 3px rgba(26,26,26,.1);
}
.question-header-title {
    font-size: 22px;
    font-weight: 800;
    color: #1a1a1a;
    line-height: 1.5;
    margin-top: 5px;
    margin-left: 10px;
}
.question-header-datetime{
    margin:17px 0 10px 7px;
    font-size:20px;
    font-weight: 900;
    color:#f00;
}
.first-primary{
    font-size: 1rem;
    margin-top: -5px;
    float: right;
    border-radius: 50px;
    height: 30px;
}
.footer-primary{
    font-size: 1rem;
    font-weight: 900;
    border-radius: 50px;
    height: 35px;
    width: 100px;
}
.description-title{
    font-size: 17px;
    font-weight: 900;
    margin-top: 10px;
    margin-left: 10px;
}

.description-content{
    display: flex;
    margin: 10px auto;
    
}
.rich-title{
    width: 22%;
    margin-left: 10px;
}
.rich-content{
    margin-left: 10px;
    width: 78%;
    line-height: 20px;
}

.mint-button-text{
    font-size: 10px !important;
}


.question-content {
    padding: 10px;
    width: 88%;
    border-radius: 10px;
    margin-top: 15px;
    background-color:#fff;
    align-items: center;
    margin: 15px auto;
    padding: 8px 10px;
    box-shadow: 0 1px 3px rgba(26,26,26,.1);
}


.author-info{
    display: flex;
    align-items: center;
    margin-bottom: 5px;
    padding: 8px 10px;
    background: #fff;
    box-shadow: 0 1px 3px rgba(26,26,26,.1);
}
.author-info-avatar{
    width:40px;
    height: 40px;
    border-radius: 100%;
}
.author-info-detail{
    margin-left:15px;
}
.author-info-nickname{
    font-size: 15px;
    margin-bottom:6px;
}
.author-info-badge{
    font-size: 14px;
}

.footer-ctn{
    width: 100%;
    height: 55px;
    position: fixed;
    bottom: 0;
    background-color: #fff;
    box-shadow: 0 1px 3px rgba(26,26,26,.1);
}

.footer-a{
    display: block;
    width: 30px;
    height: 30px;
    float: left;
    margin-left: 10px;
}
.footer-a > i{
    width: 25px;
    height: 25px;
}
.footer-a > i >img{
    width: 100%;
    height: 100%;
}
.footer-ctn > div{
    margin-top: 11px;
    float: left;
}
.footer-btn{
    margin-bottom: 5px;
}
.footer-kong{
    width: 40%;
    height: 30px;
}

.kong{
    height: 17px;
}

</style>
<style>
.rich-content p,.rich-content li{
    padding: 5px 0;
    line-height: 1.7;
}

.rich-content img{
    max-width:100%;
}
</style>
<script>
export default {
  data(){
    return {
      articleInfo:{}
    }
  },
  methods:{
      tochome(){
          this.$router.push({ path:'/' });
      },
      tocorder(){
          this.$router.push({ path:'/order' });
      },
  },
  mounted(){    
    //获取URL的参数
    let id = this.$route.params.id;
    // 向服务器发送请求,以获取数据
    this.axios.get('/details?id=' + id).then(res=>{
        this.articleInfo = res.data.articleInfo;
        this.articleInfo.image = require('../assets/images/details/' + this.articleInfo.image);
        console,log(this.articleInfo.content);
    });
    // console.log(this.moment.unix(0).format());
    // console.log(this.moment.unix(0).hour(15).format());
    // console.log(this.moment.unix(0).hour(15).format('Y年MM月DD日HH:mm'));
  }
}
</script>