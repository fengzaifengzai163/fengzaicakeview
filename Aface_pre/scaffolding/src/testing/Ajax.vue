<template>
    <div>
        <mt-button type="primary" @click="handle">获取服务器数据</mt-button>
        <p 
        v-for="(item,index) of this.$store.state.products"
        :key="index">
            {{item.productName}}
            {{item.salePrice}}
        </p>
    </div>
</template>
<script>
import { mapActions, mapState } from 'vuex'
export default {
    computed:{
        ...mapState(['products'])
    },
    methods:{
        ...mapActions({
            getData:'getServerData'
        }),
        handle(){
            // this.$store.dispatch('getServerData')
            this.getData();
        }
    }
}
</script>