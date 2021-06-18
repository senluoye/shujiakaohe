<template>
      <el-form :model="ruleForm" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="邮箱" prop="email">
            <el-input v-model="ruleForm.email" placeholder="请填写邮箱"></el-input>
        </el-form-item>
        <el-form-item label="昵称" prop="name">
            <el-input v-model="ruleForm.name" placeholder="请填写昵称"></el-input>
        </el-form-item>
        <el-form-item label="密码" prop="pass">
            <el-input type="password" v-model="ruleForm.pass" autocomplete="off" placeholder="请填写密码"></el-input>
        </el-form-item>
        <el-form-item label="确认密码" prop="checkPass">
            <el-input type="password" v-model="ruleForm.checkPass" autocomplete="off" placeholder="确认密码"></el-input>
        </el-form-item>
        <el-form-item>
            <el-button type="primary" @click="submitForm('ruleForm')">注册</el-button>
            <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
      </el-form>
    
</template>

<script>
  export default {
    data() {
      var checkEmail = (rule, value, callback) => {
        if (!value) {
          return callback(new Error('邮箱不能为空'));
        }
      };
      var validatePass = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请输入密码'));
        } else {
          if (this.ruleForm.checkPass !== '') {
            this.$refs.ruleForm.validateField('checkPass');
          }
          callback();
        }
      };
      var validatePass2 = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请再次输入密码'));
        } else if (value !== this.ruleForm.pass) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
          // this.$alert('注册成功', '', {
          //   confirmButtonText: '前往登陆',
          //   callback: action => {
          //     this.$message({
          //       type: 'info',
          //       message: `action: ${ action }`
          //     });
          //   }
          // });
          // this.$router.push({
          //       path:'/login'
          // })
        }
      };
      return {
        ruleForm: {
          name: '',
          pass: '',
          checkPass: '',
          email:'',
        },
        user:{
          username:"",
          password:"",
          email:""
        },
        rules: {
          pass: [
            { validator: validatePass, trigger: 'blur' },
            { min: 6, max: 10, message: '长度在 6 到 10 个字符/数字', trigger: 'blur' }
          ],
          checkPass: [
            { validator: validatePass2, trigger: 'blur' },
          ],
          email: [
            { validator: checkEmail, trigger: 'blur' }
          ]
        }
      };
    },
    methods: {
      submitForm(formName) {
        // this.$refs[formName].validate((valid) => {
        //   if (valid) {
        //     alert('submit!');
        //   } else {
        //     console.log('error submit!!');
        //     return false;
        //   }
        // });
        this.$store.state.software.user.username = this.ruleForm.name;
        this.$store.state.software.user.password = this.ruleForm.pass;
        this.$store.state.software.user.email = this.ruleForm.email;
        this.$store.dispatch("register", {
          username: this.ruleForm.name,
          password: this.ruleForm.pass,
          email: this.ruleForm.email
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    },
    computed: {

    }
  }
</script>

<style scoped>

</style>