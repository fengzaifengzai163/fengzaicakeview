<template>
    <div>
        <div style="border:2px solid #f00;" 
        infinite-scroll-distance="20" 
        v-infinite-scroll="loadMore"
        infinite-scroll-disabled="busy">
            <p v-for="(v,k) of n" :key="k">{{v}}</p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            n:60,
            busy:false
        }
    },
    methods:{
        loadMore(){
            //显示加载提示框
            this.$indicator.open({
                text:"加载中...",
                spinnerType:"triple-bounce"});
            this.busy = true ;
            window.setTimeout(()=>{
                this.n += 50;
                this.busy = false;
                //关闭加载提示框
                this.$indicator.close();
            },5000);
        }
    }
}
</script>