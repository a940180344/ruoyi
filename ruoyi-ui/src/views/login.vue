<template>
  <div id="login">
    <el-container>

      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect"
               background-color="red" text-color="#fff" active-text-color="#ffd04b">
        <el-menu-item index="1">
          <div style="margin-top:20px"><h2 >阳光学院</h2></div>

        </el-menu-item>
        <el-menu-item index="2" ><img style="width: 28%;margin-left: -15px" src="./t0134cef1dc7561dc52.png" alt=""></el-menu-item>


        <div class="right-1">
          <el-menu-item index="7">
            <!--            <div @click="dialogVisible = true">-->
            <div @click="tiaohzuan">
              <i class="el-icon-s-custom" style="color: white"></i>
            </div>
          </el-menu-item>
        </div>

        <div class="right-1">
          <el-menu-item index="6" class="right-1">
            <i class="el-icon-mobile-phone"  style="color: white"></i>
          </el-menu-item>
        </div>

        <div class="right-1">
          <el-menu-item index="5" class="right-1">
            <i class="el-icon-bell" style="color: white"></i>
          </el-menu-item>
        </div>

        <div class="right-1">
          <el-menu-item index="4" class="right-1">

            <i class="el-icon-message" style="color: white" ></i>


          </el-menu-item>
        </div>

      </el-menu>

      <div class="menu1">
        <el-card class="box-card" style="height: 200px">
          <div>
            <h1>《论语·阳货篇第十七》</h1>
            <p style="font-size: 34px;text-align: center;line-height: 30px;">「《诗》可以兴，可以观，可以群，可以怨。迩之事父，远之事君，多识于鸟兽草木之名。」</p>
            <p class="right-1">[每日一学]</p>
          </div>
        </el-card>
      </div>
      <div class="menu2">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span style="font-weight:900;font-size:large"><i class="el-icon-edit"></i>工作室新闻</span><i class="
el-icon-sort-up"></i><span style="font-weight:900;font-size:large">工作室动态</span>
            <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
          </div>
          <div class="box">
            <div class="menu2left"><div class="block">
              <el-carousel height="300px">
                <el-carousel-item v-for="item in main2lunbo" :key="item">
                  <div id="imgLubo1">
                    <img
                      style="height:280px;width: 100%"
                      class="cobot"
                      :src="item.url"/>

                    <span style="position: absolute; bottom: 10px; left: 0;background: darkgray;width: 100%;height: 40px;line-height:40px;text-align: center;color: white" >
                      {{item.title}}</span>
                  </div>


                </el-carousel-item>
              </el-carousel>
            </div></div>
            <div class="menu2right">右边自适应</div>
          </div>
        </el-card>
      </div>
      <div class="menu3">
        <div class="box3" style="padding: 1%;">
          <div class="menu3left">
            <el-card class="box-card">
              <div slot="header" class="clearfix">
                <span style="font-weight:900;font-size:large"><i class="el-icon-edit"></i>公告通知</span>
                <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
              </div>
              <div v-for="o in 8" :key="o" class="text item">
                <i class="el-icon-caret-right" style="color: #ff0000"></i>{{ '列表内容 ----------------------------------------------------------------------------------------------' + o }}
                <span style="color:darkgray;float: right">2022.1.1</span>
              </div>
            </el-card>
          </div>
          <div class="menu3right">
            <el-card class="box-card" style="margin-left: 10px;">
              <div slot="header" class="clearfix">
                <span style="font-weight:900;font-size:large"><i class="el-icon-edit"></i>工作室新闻</span>
                <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
              </div>
              <div v-for="o in 8" :key="o" class="text item">
                <i class="el-icon-caret-right" style="color: red"></i>{{ '列表内容 ----------------------------------------------------------------------------------------------' + o }}
                <span style="color:darkgray;float: right">2022.1.1</span>
              </div>
            </el-card>
          </div>
        </div>

      </div>
      <div class="menu4">
        <div class="box4" style="padding: 1%;">
          <div class="menu4left">
            <el-card class="box-card">
              <div slot="header" class="clearfix">
                <span style="font-weight:900;font-size:large"><i class="el-icon-platform-eleme"></i>工作室风采</span>
                <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
              </div>
              <div>
                <el-carousel :interval="4000" type="card" height="200px">
                  <el-carousel-item v-for="item in lunbo" :key="item">
                    <img :src="item" alt="" style="height:280px;width: 100%"
                         class="cobot">
                  </el-carousel-item>
                </el-carousel>
              </div>
            </el-card>
          </div>
          <div class="menu4right">
            <el-card class="box-card" style="margin-left: 10px;">
              <div slot="header" class="clearfix" >
                <span style="font-weight:900;font-size:large"><i class="el-icon-phone"></i>若有建议或其他提议可以联系我们：</span>
                <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
              </div>

              <div class="loginFooterImg">
                <div class="left"><img src="./ewm.png" alt=""> <div style="margin-bottom: 100px;width: 100px">
                     <span>
                      官方抖音号：ygxy2001
                   </span>
                </div></div>
                <div class="main"><img src="./ewm.png" alt="">
                  <div style="margin-bottom: 100px;width: 100px">
                     <span>
                      官方微信号：ygxg2001
                </span>
                  </div></div>
                <div class="right"><img src="./ewm.png" alt="">
                  <div style="margin-bottom: 100px">
                     <span>
                     官方微博名：阳光学院官微
                </span>
                  </div>
                </div>

              </div>
              <div class="menu4Footer" style="font-size: 16px">
                <div  style="text-align: center;font-size: 15px;color: gray"><span> Copyright@阳光学院 all rights reserved <br></span></div>
                <div  style="text-align: center;font-size: 15px;color: gray"><span> 地址：福州经济技术开发区登龙路99号 <br></span></div>
                <div  style="text-align: center;font-size: 15px;color: gray"><span> 邮编：350015 <br></span></div>


              </div>
            </el-card>
          </div>
        </div>
      </div>
      <el-main>
      </el-main>
      <el-footer>Footer</el-footer>
    </el-container>
    <!--    <el-button type="text" @click="dialogVisible = true">点击打开 Dialog</el-button>-->
    <el-dialog
      :visible.sync="dialogVisible"
      width="23%"
      height = "30%">
      <span slot="footer" class="dialog-footer">
         <div>
      <el-form ref="loginForm" :model="loginForm" :rules="loginRules" class="login-form">
        <h3 class="title">阳光学院工作室登入</h3>
        <el-form-item prop="username">
          <el-input
            v-model="loginForm.username"
            type="text"
            auto-complete="off"
            placeholder="账号"
          >
            <svg-icon slot="prefix" icon-class="user" class="el-input__icon input-icon" />
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input
            v-model="loginForm.password"
            type="password"
            auto-complete="off"
            placeholder="密码"
            @keyup.enter.native="handleLogin"
          >
            <svg-icon slot="prefix" icon-class="password" class="el-input__icon input-icon" />
          </el-input>
        </el-form-item>
        <el-form-item prop="code" v-if="captchaEnabled">
          <el-input
            v-model="loginForm.code"
            auto-complete="off"
            placeholder="验证码"
            style="width: 63%"
            @keyup.enter.native="handleLogin"
          >
            <svg-icon slot="prefix" icon-class="validCode" class="el-input__icon input-icon" />
          </el-input>
          <div class="login-code">
            <img :src="codeUrl" @click="getCode" class="login-code-img"/>
          </div>
        </el-form-item>
        <el-checkbox v-model="loginForm.rememberMe" style="margin:0px 0px 25px 0px;">记住密码</el-checkbox>
        <el-form-item style="width:100%;">
          <el-button
            :loading="loading"
            size="medium"
            type="primary"
            style="width:100%;"
            @click.native.prevent="handleLogin"
          >
            <span v-if="!loading">登 录</span>
            <span v-else>登 录 中...</span>
          </el-button>
          <div style="float: right;" v-if="register">
            <router-link class="link-type" :to="'/register'">立即注册</router-link>
          </div>
        </el-form-item>
      </el-form>
           <!--  底部  -->
      <div class="el-login-footer">
        <span>Copyright © 2018-2022 ruoyi.vip All Rights Reserved.</span>
      </div>
    </div>
  </span>
    </el-dialog>

    <!--  <el-button @click="dianji(34)">-->
    <!--    dianwoowowo-->
    <!--  </el-button>-->
  </div>
</template>

<script>
import { getCodeImg } from "@/api/login";
import Cookies from "js-cookie";
import { encrypt, decrypt } from '@/utils/jsencrypt'

export default {
  name: "Login",
  data() {
    return {
      codeUrl: "",
      dialogVisible: false,
      loginForm: {
        username: "admin",
        password: "admin123",
        rememberMe: false,
        code: "",
        uuid: ""
      },
      loginRules: {
        username: [
          { required: true, trigger: "blur", message: "请输入您的账号" }
        ],
        password: [
          { required: true, trigger: "blur", message: "请输入您的密码" }
        ],
        code: [{ required: true, trigger: "change", message: "请输入验证码" }]
      },
      loading: false,
      // 验证码开关
      captchaEnabled: true,
      // 注册开关
      register: false,
      redirect: undefined,
      lunbo:[
        "http://zsb.ygu.edu.cn/__local/B/3B/73/4F6516B2DF065EE583C484735C1_8A2B67D2_13DDE.jpg",
        "http://zsb.ygu.edu.cn/__local/7/21/3C/4CAEEAF9F8F801FDF481C935717_801CCEFF_10EFD.jpg",
        "http://zsb.ygu.edu.cn/__local/6/8F/BF/87CBB1DCA9B40D14947ECE11626_9DEF0F43_2A4F41.jpg",
        "http://zsb.ygu.edu.cn/__local/A/CB/E9/AB3D7A35B44543A81E9A8C961DC_4BC5C4A7_5D7D1.jpg"
      ],
      main2lunbo:[
        {
          url:"http://zsb.ygu.edu.cn/__local/A/CB/E9/AB3D7A35B44543A81E9A8C961DC_4BC5C4A7_5D7D1.jpg",
          title:"人工智能之情暖工作室成立"
        },
        {
          url:"http://zsb.ygu.edu.cn/__local/A/CB/E9/AB3D7A35B44543A81E9A8C961DC_4BC5C4A7_5D7D1.jpg",
          title:"江英杰校长为情暖工作室致辞"
        },{
          url:"http://zsb.ygu.edu.cn/__local/A/CB/E9/AB3D7A35B44543A81E9A8C961DC_4BC5C4A7_5D7D1.jpg",
          title:"人工智能之情暖工作室成立"
        }
      ]
    };
  },
  watch: {
    $route: {
      handler: function(route) {
        this.redirect = route.query && route.query.redirect;
      },
      immediate: true
    }
  },
  created() {
    this.getCode();
    this.getCookie();
  },
  methods: {
    tiaohzuan(){
      this.$router.push({
        path: '/loginshouye',
      })
    },
    dianji(id){
      this.$router.push({
        path: '/essaylogin',
        query: { id: id },
      })
    },
    getCode(){
      getCodeImg().then(res => {
        this.captchaEnabled = res.captchaEnabled === undefined ? true : res.captchaEnabled;
        if (this.captchaEnabled) {
          this.codeUrl = "data:image/gif;base64," + res.img;
          this.loginForm.uuid = res.uuid;
        }
      });
    },
    handleClose(done) {
      this.$confirm('确认关闭？')
        .then(_ => {
          done();
        })
        .catch(_ => {});
    },
    getCookie() {
      const username = Cookies.get("username");
      const password = Cookies.get("password");
      const rememberMe = Cookies.get('rememberMe')
      this.loginForm = {
        username: username === undefined ? this.loginForm.username : username,
        password: password === undefined ? this.loginForm.password : decrypt(password),
        rememberMe: rememberMe === undefined ? false : Boolean(rememberMe)
      };
    },
    handleLogin() {
      this.$refs.loginForm.validate(valid => {
        if (valid) {
          this.loading = true;
          if (this.loginForm.rememberMe) {
            Cookies.set("username", this.loginForm.username, { expires: 30 });
            Cookies.set("password", encrypt(this.loginForm.password), { expires: 30 });
            Cookies.set('rememberMe', this.loginForm.rememberMe, { expires: 30 });
          } else {
            Cookies.remove("username");
            Cookies.remove("password");
            Cookies.remove('rememberMe');
          }
          this.$store.dispatch("Login", this.loginForm).then(() => {
            this.$router.push({ path: this.redirect || "/" }).catch(()=>{});
          }).catch(() => {
            this.loading = false;
            if (this.captchaEnabled) {
              this.getCode();
            }
          });
        }
      });
    }
  }
};
</script>
<style>
/* 顶部导航栏 */
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.8;
  line-height: 150px;
  margin: 0;
}

.right-1{
  float: right;
}

.menu2left {
  width: 600px;
  height: 300px;
  float: left;
  margin-bottom: 15px;
}

.menu2right {
  width: 100%;
  margin-left: 200px;
}
.el-menu-demo{
  position: sticky; top: 0px;
  z-index:999;
}
/*等于左边栏宽度*/

.menu3left {
  width: 50%;
  height: 300px;
  float: left;
  margin-bottom: 15px;
}

.menu3right {
  width: 50%;
  height: 300px;
  margin-left: 50%;
}

/*等于左边栏宽度*/

.menu4left {
  width: 50%;
  height: 300px;
  float: left;
}

.menu4right {
  width: 50%;
  height: 300px;
  margin-left: 50%;
}
.menu3,
.menu4{
  padding-left: 2%;
  padding-right: 2%;
}


/*等于左边栏宽度*/
#login
#app,
.el-container {
  padding: 0px;
  margin: 0px;
  height: 100%;
  background-image: url(./xuanchaunBack.jpg);
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

.menu1 {
  padding-left: 3%;
  padding-right: 3%;
  padding-top: 1%;
}

.menu2 {
  padding: 3%;
}

.box-card {
  opacity: 0.85;
}
.loginFooterImg{
  display: flex;
  height: 165px;
}
.left{
  order: -1;
  flex: 0 1 200px;
  margin-right: 180px;
  height:100%
}
.main{
  flex-grow: 1;
  height:100%
}
.right{
  flex: 0 1 100px;
  margin-left: 20px;
  height:100%
}
</style>
<style rel="stylesheet/scss" lang="scss">
.login {
  display: flex;
  justify-content: center;
  align-items: center;
}
.title {
  margin: 0px auto 30px auto;
  text-align: center;
  color: #707070;
}

.login-form {
  border-radius: 6px;
  background: #ffffff;
  width: 400px;
  padding: 25px 25px 5px 25px;
  .el-input {
    height: 38px;
    input {
      height: 38px;
    }
  }
  .input-icon {
    height: 39px;
    width: 14px;
    margin-left: 2px;
  }
}
.login-tip {
  font-size: 13px;
  text-align: center;
  color: #bfbfbf;
}
.login-code {
  width: 33%;
  height: 38px;
  float: right;
  img {
    cursor: pointer;
    vertical-align: middle;
  }
}
.el-login-footer {
  height: 40px;
  line-height: 40px;
  position: fixed;
  bottom: 0;
  width: 100%;
  text-align: center;
  color: #fff;
  font-family: Arial;
  font-size: 12px;
  letter-spacing: 1px;
}
.login-code-img {
  height: 38px;
}
</style>
