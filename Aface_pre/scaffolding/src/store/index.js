import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import router from '../router'
import {MessageBox} from 'mint-ui'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    //标识用户是否已经登录，1表示已经登录，0表示未登录
    isLogined:localStorage.getItem('isLogined') || 0,
    //存储登录用户的相关信息
    userInfo:JSON.parse(localStorage.getItem('userInfo')) || {},
    username:'Tom',
    age:23,
    //true表示女，false表示男
    sex:true,
    extends:'中国',
    products:[
      {
        productName:'1G+8G 教育电视 人工智能液晶平板电视',
        salePrice:1149
      },
      {
        productName:'AA',
        salePrice:11496
      },
      {
        productName:'BB',
        salePrice:3156
      }
    ]
  },
  //修改state中共享状态的操作方法
  mutations: {
    //state形参代表的是当前store内的所有state
    changeAge(state){
      state.age ++;
    },
    addProduct(state,payload){
      console.log(state);
      console.log(payload);
      state.products.push(payload);
    },
    login_mutations(state,payload){
      state.isLogined = 1;
      //修改登录用户的相关信息
      state.userInfo = payload;
    },
    //注销
    logout_mutations(state){
      //修改登录状态为0
      state.isLogined = 0;
      //修改登录用户的相关信息为空对象
      state.userInfo = {};
    }
  },
  actions: {
    getServerData(context){
      // console.log(context);
      // console.log('------------------------');
      //异步请求
      //get(服务器URL地址,参数).then(res=>{});
      axios.get('http://127.0.0.1:3000/data').then(res=>{
        //拿到了货
        //小货车说：我只负责拉货，
        //我现在把货拉来了，我现要找个人把货
        //卸掉
        //通知名称为addProduct的工人把货
        //卸掉
        context.commit('addProduct',res.data.results);
        // console.log(res.data.results);
      });
    },
    login_actions(context,payload){
      axios.post('/clogin',payload).then(res=>{
        if(res.data.code == 1){
          context.commit('login_mutations',res.data.userInfo);
          //将用户的登录状态保存到webStorage中
          localStorage.setItem('isLogined',1);
          localStorage.setItem('userInfo',JSON.stringify(res.data.userInfo));
          // console.log(router);
          router.push('/chome');
        }else{
          MessageBox('登录提示','用户名或密码错误');
        }
      });
      // console.log(payload);
      // console.log('现在要发送请求，以实现登录操作');
    }
  },
  modules: {
  }
})
