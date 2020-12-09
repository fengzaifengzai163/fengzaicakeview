<template>
    <div>
        <h1>访问VUEX数据--01</h1>
        <p>姓名：{{this.$store.state.username}}</p>
        <p>年龄：{{this.$store.state.age}}</p>
        <p>性别：{{this.$store.state.sex}}</p>
        <p>国家：{{this.$store.state.extends}}</p>
        <p><mt-button type="primary" @click="handle">年龄增加</mt-button></p>
        <h1>商品列表如下</h1>
        <p
            v-for="(item,index) of this.$store.state.products"
            :key="index"
        >
            {{item.productName}}
            {{item.salePrice}}
        </p>
        <div>
            <mt-field type="text" label="商品名称" placeholder="请输入商品名称" v-model="productName"></mt-field>
            <mt-field type="text" label="商品价格" placeholder="请输入商品价格" v-model="salePrice"></mt-field>
            <mt-button type="primary" @click="add">添加商品</mt-button>
        </div>
    </div>
</template>
<style scoped>
h1{
    font-size: 24px;
    text-align: center;
    line-height: 2em;
}
</style>
<script>
import {mapMutations, mapState} from 'vuex';
export default {
    data(){
        return {
            productName:'',
            salePrice:0
        }
    },
    computed:{
        ...mapState([
            'username',
            'age',
            'sex',
            'products',
            'extends',
            ]),
            ...mapState({
                extension:'extends'
            })
    },
    methods:{
        ...mapMutations(['changeAge']),
        //方法改名
        ...mapMutations({
            addMyProduct:'addProduct'
        }),
        handle(){
            //
            // this.$store.commit('changeAge');
            this.changeAge();
        },
        add(){
            let obj = {
                productName:this.productName,
                salePrice:this.salePrice
            }
            //调用Vuex中的Mutations
            // this.$store.commit('addProduct',obj);
            this.addMyProduct(obj);
        }
    }
}
</script>