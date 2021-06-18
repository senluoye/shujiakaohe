<template>
  <div class="one">
    <div class="two">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/shouye' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>购物车</el-breadcrumb-item>
      </el-breadcrumb>
      <el-table
          ref="multipleTable"
          :data="cartList"
          tooltip-effect="dark"
          style="width: 100%"
          @selection-change="handleSelectionChange">

        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column width="80">
          <template slot-scope="scope">
            <el-image :src="scope.row.cart_picurl"></el-image>
          </template>
        </el-table-column>
        <el-table-column label="商品信息" width="300">
          <template slot-scope="scope">
            <div style="font-weight: bold">
              {{ scope.row.cart_softwarename }}
            </div>
            <div style="color: dodgerblue">
              授权类型：{{ scope.row.cart_period }}
            </div>
          </template>
        </el-table-column>
        <el-table-column label="单价">
          <template slot-scope="scope">
            <div style="color: red; font-weight: bold; font-size: large">
              ¥ {{ scope.row.cart_price }}
            </div>
          </template>
        </el-table-column>
        <el-table-column label="数量">
          <template slot-scope="scope">
            <el-input-number size="small" v-model="scope.row.cart_count" @change="handleChange(scope.row.cart_id, scope.row.cart_count)" :min="1" :max="99"
                             label="描述文字"></el-input-number>
          </template>
        </el-table-column>
        <el-table-column label="小记">
          <template slot-scope="scope">
            <div style="color: red; font-weight: bold; font-size: large">
              ¥ {{ scope.row.cart_count * scope.row.cart_price }}
            </div>
          </template>
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="text" @click="handleDelete(scope.row.cart_id)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div style="margin-top: 20px;margin-bottom: 20px">
        <el-row>
<!--          <el-col :span="4">-->
<!--            <el-button type="text">删除选中商品</el-button>-->
<!--          </el-col>-->
          <el-col :span="20">
            <div class="grid-content bg-white"></div>
          </el-col>
          <el-col :span="4">
            <div>
              应付总额: <span style="color: red;font-weight: bold;font-size: large">¥ {{ totalPrice }}</span>
            </div>
          </el-col>
        </el-row>
      </div>
      <div style="margin-top: 20px;margin-bottom: 50px">
        <el-row>
          <el-col :span="20">
            <div class="grid-content bg-white"></div>
          </el-col>
          <el-col :span="4">
            <el-button type="primary">去结算</el-button>

          </el-col>
        </el-row>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      multipleSelection: []
    }
  },
  methods: {
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },
    handleChange(cart_id,cart_count) {
      this.$store.dispatch("changeQuantity",{
        id:cart_id,
        count:cart_count
      })
    },
    handleDelete(cart_id){
      this.$store.dispatch("deleteFromCart", cart_id);
      setTimeout(() => {
        this.$store.dispatch("getShoppingCart", "11111111111");
      })
    }
  },
  computed: {
    cartList() {
      return this.$store.state.software.cartList;
    },
    totalPrice() {
      var sum = 0;
      this.cartList.forEach((element) => sum += element.cart_price * element.cart_count)
      return sum;
    }
  },
  mounted() {
    this.$store.dispatch("getShoppingCart", "11111111111");
  }
}
</script>

<style scope>
.one {
  width: 100%;
}

.bg-white {
  background: #FFFFFF;
}

.grid-content {
  min-height: 36px;
}
</style>
