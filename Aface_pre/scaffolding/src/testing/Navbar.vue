<template>
  <div>
    <!-- 顶部选项卡开始 -->
    <mt-navbar v-model="active">
      <mt-tab-item id="1">新闻</mt-tab-item>
      <mt-tab-item id="2">财经</mt-tab-item>
      <mt-tab-item id="3">金融</mt-tab-item>
      <mt-tab-item id="4">社会</mt-tab-item>
    </mt-navbar>
    <!-- 顶部选项卡结束 -->
    <!-- 面板开始 -->
    <div class="main">
      <mt-tab-container v-model="tab">
        <mt-tab-container-item id="ab">
          <p v-for="(v,k) of 100" :key="k">AA--{{v}}</p>
        </mt-tab-container-item>
        <mt-tab-container-item id="cd">BB</mt-tab-container-item>
        <mt-tab-container-item id="ef">CC</mt-tab-container-item>
        <mt-tab-container-item id="gh">DD</mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 面板结束 -->
    <!-- 底部选项卡开始 -->
    <mt-tabbar v-model="selected" fixed>
      <mt-tab-item id="index">
        首页
        <img src="../assets/common/index_enabled.png" alt="" slot="icon" v-if="selected == 'index'">
        <img src="../assets/common/index_disabled.png" alt="" slot="icon" v-else>        
      </mt-tab-item>
      <mt-tab-item id="cart">
        购物车
        <img src="../assets/common/cart_enabled.png" alt="" slot="icon" v-if="selected == 'cart'">
        <img src="../assets/common/cart_disabled.png" alt="" slot="icon" v-else> 
      </mt-tab-item>
      <mt-tab-item id="me">
        我的
         <img src="../assets/common/me_enabled.png" alt="" slot="icon" v-if="selected == 'me'">
        <img src="../assets/common/me_disabled.png" alt="" slot="icon" v-else> 
      </mt-tab-item>
    </mt-tabbar>
    <!-- 底部选项卡结束 -->
  </div>
</template>
<style scoped>
.main{
  margin-bottom:55px;
}
</style>
<script>
export default {
  data() {
    return {
      active: "1",
      tab: "ab",
      selected:'index'
    };
  },
  watch: {

    //监听tabbar绑定的变量,并且根据变量值的变化来跳转到不同的页面
    selected(newValue){
      if(newValue == 'index'){        
        this.$router.push('/');
      } else if(newValue == 'cart'){
         this.$router.push('/cart');
      } else if(newValue == 'me'){
         this.$router.push('/me');
      }
    },

    // 可以带有两个参数
    // 第一个参数代表新值
    // 第二个参数代表旧值
    active(newValue) {
      if (newValue == "1") {
        this.tab = "ab";
      } else if (newValue == "2") {
        this.tab = "cd";
      } else if (newValue == "3") {
        this.tab = "ef";
      } else {
        this.tab = "gh";
      }
    },
  },
};
</script>