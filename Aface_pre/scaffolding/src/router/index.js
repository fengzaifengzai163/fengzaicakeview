import Vue from 'vue'
import VueRouter from 'vue-router'

//测试案例
import Header from '../testing/Header.vue';
import Button from '../testing/Button.vue';
import Field from '../testing/Field.vue';
import Navbar from '../testing/Navbar.vue';
import Cart from '../testing/Cart.vue';
import Swiper from '../testing/Swiper.vue';
import Infinite from '../testing/Infinite.vue';
import Access1 from '../testing/Access1.vue';
import Access2 from '../testing/Access2.vue';
import Ajax from '../testing/Ajax.vue';

//项目实践
import Home from '../views/Home.vue'
import Article from '../views/Article.vue'
import Register from '../views/Register.vue';
import Login from '../views/Login.vue';
import Details from '../views/Details.vue';
import Me from '../views/Me.vue';
import Order from '../views/Order.vue';

//CAKE项目实践
import Chome from '../cakeviews/Chome.vue';
import Cdetails from '../cakeviews/Cdetails.vue';
import Cregister from '../cakeviews/Cregister.vue';
import Clogin from '../cakeviews/Clogin.vue';
import Ctestlogin from '../cakeviews/Ctestlogin.vue';
import Cme from '../cakeviews/Cme.vue';
import Corder from '../cakeviews/Corder.vue'

Vue.use(VueRouter)
const routes = [
  //-----------------------------
  //-----cake路由词典部分---------
  
  //-----------------------------
  {
    path:'/ajax',
    component:Ajax
  },
  {
    path:'/access1',
    component:Access1
  },
  {
    path:'/access2',
    component:Access2
  },
  {
    path:'/infinite',
    component:Infinite
  },
  {
    path:'/cart',
    component:Cart
  },
  {
    path:'/swiper',
    component:Swiper
  },
  {
    path:'/navbar',
    component:Navbar
  },
  {
    path:'/header',
    component:Header
  },
  {
    path:'/button' ,
    component:Button
  },
  {
    path:'/field',
    component:Field
  },
  //--------------------------------
  //原views
  {
    path: '/',
    component: Home
  },
  {
    //后面要改的
    path:'/article/:id',
    component:Article
  },
  {
    path:'/details/:id',
    component:Details
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/me',
    component:Me
  },
  {
    path:'/order',
    component:Order
  },
  // ------------------------------------
  {
    path:'/chome',
    component:Chome
  },
  {
    path:'/cdetails/:id',
    component:Cdetails
  },
  {
    path:'/cregister',
    component:Cregister
  },
  {
    path:'/clogin',
    component:Clogin
  },
  {
    path:'/ctestlogin',
    component:Ctestlogin
  },
  {
    path:'/cme',
    component:Cme
  },
  {
    path:'/corder',
    component:Corder
  },
  //---------------------------------------
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
