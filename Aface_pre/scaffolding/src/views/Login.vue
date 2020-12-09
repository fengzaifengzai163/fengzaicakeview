<template>
  <div>
    <!-- 顶部开始 -->
    <mt-header>
      <div slot="left">
        <router-link to="./">
          <span class="header-span">×</span>
        </router-link>
      </div>
    </mt-header>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <div class="middle-container">
      <div>
        <h1>欢迎登录美丽家蛋糕店</h1>
        <div class="phone-ctn">
            <mt-field
            type="text"
            label="+86 >"
            placeholder="请输入手机号码"
            :attr="{ maxlength: 11 }"
            v-model="phonenumber"
            ></mt-field>
        </div>
        <div class="password-ctn" v-if="show">
            <mt-field
            type="text"
            placeholder="请输入验证码"
            :attr="{ maxlength: 6 }"
            v-model="codepassword"
            >
              <div class="get-code">
                <a href="javascript:;" @click="getcode">获取验证码</a>
              </div>
            </mt-field>
        </div>
        <div class="password-ctn" v-if="!show">
            <mt-field
            type="password"
            label="密码 >"
            placeholder="请输入密码"
            :attr="{ maxlength: 11 }"
            v-model="password"
            >
            </mt-field>
        </div>
        
        <p>注册手机号自动创建账户</p>
        <mt-button size="large" type="primary" @click="codehandle" v-if="show">立即登录</mt-button>
        <mt-button size="large" type="primary" @click="handle" v-if="!show">立即登录</mt-button>
        <p id="loginways" v-if="show">
          <mt-button size="large" type="danger" @click="loginways">用户名密码登录</mt-button>
        </p>
        <p id="loginways" v-if="!show">
          <mt-button size="large" type="danger" @click="loginways">验证码登录</mt-button>
        </p>
        <div class="toregister" v-if="!show">
          <a @click="tocregister">立即注册</a>
        </div>
      </div>
    </div>
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div id="footer-container">
        <div>
            <p>------其他方式登录-------</p>
        </div>
    </div>
    <!-- 底部结束 -->
  </div>
</template>
<style scoped>
.header-span {
  color: rgb(0, 89, 255);
  font-size: 50px;
  font-weight: 100;
}
.mint-header {
  /* 视情况 */
  height: 50px;
  font-size: 25px;
  background-color: #fff !important;
}
.middle-container {
  width: 375px;
  height: 380px;
  text-align: center;
}
.middle-container > div {
  height: 430px;
  width: 300px;
  margin: 0 auto;
}
.middle-container > div > h1 {
  font-size: 30px;
  margin: 40px 0px;
}
.middle-container > div > p {
  margin: 20px 0;
}

.phone-ctn{
  border-bottom: 1px solid rgb(207, 197, 197);
  /* text-align: left; */
}
.password-ctn{
  border-bottom: 1px solid rgb(207, 197, 197);
  /* text-align: left; */
}

.mint-cell-title {
  padding: 0px !important;
}
.mint-button {
  border-radius: 20px !important;
  margin-bottom: 15px;
}
#loginways {
  margin-top: 10px;
}



#footer-container{
    width: 375px;
    height: 100px;
    text-align: center;
    margin-top: 20px;
}
#footer-container>div{
    margin: 0 auto;
}
#footer-container>div>p{
    font-size: .12rem;
    color: #b0b0b0;
}

.get-code{
  float: right;
}
.get-code a{
  color: #0aa1ed;
}
.toregister a{
  color: #0aa1ed;
}

</style>
<script>
export default {
  data() {
    return {
      phonenumber: "",
      codepassword: "",
      password: "",
      realcode: "",
      show:true
    };
  },
  methods:{
      tocregister(){
        this.$router.push({ path:'/register' });
      },
      loginways(){
          this.show = !this.show;
      },
      getcode(){
        let code = '';
        for(let i = 0;i < 6; i++){
          let onenumber = Math.floor(Math.random() * 10) + '';
          code += onenumber;
        }
        code -= 0;
        console.log(code);
        console.log(typeof(code));
        this.realcode = code;
      },
      codehandle(){
        if(this.checkUsername() && this.checkCodePassword()){
          if(this.codepassword == this.realcode){
            this.$router.push({ path:'/' });
          }else{
              this.$toast({
              message: "验证码错误",
              position: "middle",
              duration: 5000,
            });
            return false;
          }
        }
      },
      handle(){
      //会引发短路现象
      if(this.checkUsername() && this.checkPassword()){
        let str = 'username=' + this.phonenumber + '&password=' + this.password;
        this.$store.dispatch('login_actions',str);
        //现在要发送相关的用户名、密码到WEB服务器
        // this.axios.post('/login','username=' + this.username + '&password=' + this.password).then(res=>{
        //   if(res.data.code == 1){
        //     //提交Mutations，以修改用户登录状态
        //     this.$store.commit('login_mutations',res.data.userInfo);
        //     //页面跳转
        //     this.$router.push('/');
        //   }else{
        //     this.password = '',
        //     this.$messagebox('登录提示','用户名或密码错误');
        //   }
        // });
        }
      },
      //检测用户名
    checkUsername() {
      let username = this.phonenumber;
      let usernameReg = /^1[3-9]\d{9}$/;
      if (usernameReg.test(username)) {
        return true;
      } else {
        // 显示短消息提示框(简捷写法)
        // this.$toast("用户名格式或内容错误");
        // 显示短消息提示框(标准写法)
        this.$toast({
          message: "用户名格式或内容错误",
          position: "top",
          duration: 5000,
        });
        //终止函数的执行
        return false;
      }
    },
    //检测密码
    checkPassword() {
      let password = this.password;
      let passwordReg = /^[0-9A-Za-z\.\-_]{8,15}$/;
      if (passwordReg.test(password)) {
        return true;
      } else {
        this.$toast({
          message: "密码格式错误",
          position: "middle",
          duration: 5000,
        });
        return false;
      }
    },
    //检测验证码
    checkCodePassword() {
      let codepassword = this.codepassword;
      let passwordReg = /^[0-9]{6}$/;
      if (passwordReg.test(codepassword)) {
        return true;
      } else {
        this.$toast({
          message: "验证码格式错误",
          position: "middle",
          duration: 5000,
        });
        return false;
      }
    }
      
  }
};
</script>