<template>
    <div>
        <!-- 顶部导航开始 -->
        <mt-header title="美丽家蛋糕店">
        <div slot="left">
            <div class="header-left header-container">
                <img src="../assets/Ccommon/location.png" alt="">
                <span>北京市</span>
            </div>
        </div>
        <!-- <div slot="right" class="shortcut">
            <span>您好</span>
            <mt-button @click="logout">注销</mt-button>
        </div> -->
        <div slot="right" class="shortcut">
            <router-link to="/login">登录</router-link>
        </div>
        <!-- <router-link to="/register">注册</router-link> -->
        <!-- <div slot="right">
            <div class="header-right header-container">
                <img src="../assets/Ccommon/shopcar.png" alt="">
            </div>
        </div> -->
        </mt-header>
        <!-- 顶部导航结束 -->
        <!-- 首页轮播图开始 -->
        <div>
            <div class="swipe">
                <mt-swipe :auto="4000" :show-indicators="true">
                    <mt-swipe-item><img src="../assets/Ccommon/swipe3.jpg" alt=""></mt-swipe-item>
                    <mt-swipe-item><img src="../assets/Ccommon/swipe2.jpg" alt=""></mt-swipe-item>
                </mt-swipe>
            </div>
        </div>
                    <!-- 多余图片 -->
                    <!-- <mt-swipe-item><img src="../assets/common/a1be5415daf14d918d94d8925df510ef.jpg" alt=""></mt-swipe-item>
                    <mt-swipe-item><img src="../assets/common/bcd88e21673b4e59b81f78e636ebbffd.jpg" alt=""></mt-swipe-item> -->
        <!-- 首页轮播图结束 -->
        <!-- 中部选项卡开始 -->
        <mt-navbar v-model="active">
            <mt-tab-item id="1">
                生日蛋糕
            </mt-tab-item>
            <mt-tab-item id="2">
                感恩父母
            </mt-tab-item>
            <mt-tab-item id="3">
                情侣蛋糕
            </mt-tab-item>
            <mt-tab-item id="4">
                儿童蛋糕
            </mt-tab-item>
        </mt-navbar>
        <!-- 中部选项卡结束 -->
        <!-- 面板区域开始 -->
    <div class="main"
      infinite-scroll-distance="20"
      v-infinite-scroll="loadMore"
      infinite-scroll-disabled="busy"
      infinite-scroll-immediate-check="true"
      >
      <mt-tab-container>
        <mt-tab-container-item>
          <!-- 单一文章信息开始 -->
          <div 
          class="articleItem"
          v-for="(article,index) of articles"
          :key="index">
            <router-link :to="`/details/${article.id}`">
              <!-- 文章标题开始 -->
              <div class="articleItem-header">
                {{article.subject}}
              </div>
              <!-- 文章标题结束 -->
              <!-- 文章图文信息开始 -->
              <div class="articleItem-wrapper">
                <!-- 文章图像开始  -->
                <div class="articleImg" v-if="article.image != null">
                  <img v-lazy="article.image" />
                </div>
                <!-- 文章图像结束 -->
                <!-- 文章简介开始 -->
                <!-- <div class="articleDes">
                  {{article.description}}
                </div> -->
                <!-- 文章简介结束 -->
              </div>
              <!-- 文章图文信息结束 -->
            </router-link>
          </div>
          <!-- 单一文章信息结束 -->
          <div style="padding:20px;background-color:#0aa1ed;color:#fff;" v-if="page > pagecount" class="endline">我是有底线的</div>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 面板区域结束 -->
    <!-- 底部选项卡开始 -->
    <mt-tabbar v-model="selectedTab" fixed>
        <mt-tab-item id="index">
            <a class="jump">
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
  background-color: rgba(255, 94, 0, 0.849) !important;
}
.shortcut a {
  color: #fff;
  padding-left: 20px;
}
.header-container{
    height: 20px;
    width: 20px;
}
.header-left>img{
    width: 100%;
    height: 100%;
    margin-right: 5px;
}
.header-right{
    margin-left: 55px;
}
.header-right>img{
    width: 100%;
    height: 100%;
}

.swipe{
  height: 9.9rem;
  width: 92%;
  border-radius: .9rem;
  overflow: hidden;
  margin: .7rem auto;
  box-shadow: 0 1px 3px rgba(26,26,26,.1);
}

.main {
  margin-bottom: 55px;
}

.mint-tab-container-item{
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  /* flex-direction: column; */
}

.articleItem{
  padding:10px 0;
  margin:0 10px;
  border-bottom:1px solid #999;
  /* 外边距,取44% */
  width: 44%;
  float: left;
}
.articleItem-header{
  font-weight: 600;
  font-size: 15px;
  color: #1a1a1a;
  height: 14px;
  overflow: hidden;
  text-overflow: ellipsis;
}
.articleItem-wrapper{
  display: flex;
  align-items: center;
  padding-top: 10px;
  width:100%;
}
.articleImg{
  width: 165px;
  height: 165px;
}
.articleImg img{
  width: 165px;
  height: 165px;
  border-radius: 5px;
}
.articleDes{
  height: 65px;
  font-size: 15px;
  overflow: hidden;
  font-weight: 400;
  text-overflow: ellipsis;
  line-height: 21px;
  letter-spacing: normal;
  color: #444;
}
.endline{
  width: 100%;
}

@import '../assets/repeatCSS/jump.css';



</style>
<script>
export default {
    data(){
        return{
          active:"1",
          selectedTab: "index",
          category:[],
          //
          articles:[],
          //用于记录在进入滚动范围后，是否继续触发滚动函数
          busy:false,
          //页码
          page:1,
          //总页数
          pagecount:0
        }
    },
    methods:{
    
    //进入我的界面
    tocme(){
      this.$router.push({ path:'/me' });
    },
    tocorder(){
      this.$router.push({ path:'/order' });
    },

    //用户注销
    logout(){
      this.$store.commit('logout_mutations');
      localStorage.clear();
    },

    //获取服务器自定义函数
    //分别被mounted、watch、及无限滚动调用
    //纵观三次调用，会发现只有分类ID及页码值是不同的，也就
    //决定了访问自定义函数腰带有两个参数
    loadData(cid, page){
      this.$indicator.open({
        text:'加载中...',
        spinnerType:'fadingcircle'});
      this.busy = false;
      this.axios.get('/articles?cid=' + cid + '&page=' + page).then(res=>{
        let data = res.data.results;
        //总页数进行赋值
        this.pagecount = res.data.pagecount;
        
        data.forEach(item=>{
          if(item.image != null){
            item.image = require('../assets/images/articles/' + item.image);
          }
          this.articles.push(item);
        })
        this.$indicator.close();
        this.busy = false ;
        // this.articles = res.data.results;
      });
    },


    loadMore(){
      //此处要发送真正的服务器请求了
      this.page++;
      // 
      if(this.page <= this.pagecount){
        this.loadData(this.active,this.page);
      }
    }
  },

  //监听顶部选项卡发生变化时，需要发送请求以获取对应的文章数据
  watch:{
    active(value){
      this.articles = [];
      //
      this.page = 1 ;
      //
      this.loadData(this.active,this.page);
    }
  },
  mounted(){
    this.axios.get('/category').then(res=>{
      this.category = res.data.results;
    });
    //
    this.loadData(this.active,this.page);
  },
    
}

</script>