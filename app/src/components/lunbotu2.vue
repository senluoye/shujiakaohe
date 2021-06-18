<template>
  <div class="block">
    <el-carousel height="250px">
      <el-carousel-item v-for="image in images" :key="image.index">
          <el-image :src="image.src" class="img"></el-image>
      </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
export default {
    name:'lunbotu',
    data(){
        return{
            images:[
                {
                    index:0,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4g3xdNfDdE7w5M5jecew3NzQ0Mi5wbmcO0O0O"

                },
                {
                    index:1,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4g3xdNfDdE7w5N5DeIez3OTgwOS5wbmcO0O0O"

                }
            ]
        }
    }
}
</script>

<style scoped>
  .el-carousel__item {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    margin: 0;
  }
  .block{
      width: 100%;
  }
  .img{
    height: 100%;
  }
</style>
