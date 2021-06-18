<template>
  <div class="block">
    <el-carousel height="230px">
      <el-carousel-item v-for="image in images" :key="image.index">
          <el-image :src="image.src"></el-image>
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
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4k3wdNfDdA715M5Tekez3NzUyMy5wbmcO0O0O"

                },
                {
                    index:1,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4k3wdMfTdA715M5DeEey3OTI1Mi5wbmcO0O0O"

                },
                {
                    index:2,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4k3wdNfDdA7z5N5DeYex3ODU5OS5wbmcO0O0O"

                },
                {
                    index:3,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4g3ydMfDdA7z5M5Tegew3NzE2MC5wbmcO0O0O"

                },
                {
                    index:4,
                    src: "https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4Lc2bFak7c6y981y2M6D8Iaw4M2D4g3wdNfTdA725M5jeYey3NjkwNy5wbmcO0O0O"

                },

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
</style>