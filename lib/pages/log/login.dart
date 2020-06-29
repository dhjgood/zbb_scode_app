import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zbbscodeapp/pages/common/colors.dart';
import 'package:zbbscodeapp/pages/common/tool.dart';
import 'dart:async';


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  //email的控制器
  final TextEditingController _txtController = TextEditingController();

  //密码的控制器
  final TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // logo
  Widget _buildLogo() {
    return Container(
      width: 200,
      height: 130,
      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 76,
            height: 76,
            margin: EdgeInsets.symmetric(horizontal: 15),
//            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(38, 27, 27, 29),
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(76), // 父容器的50%
                        )),
                    child: Container(),
                  ),
                ),
                Positioned(
//                  top: 13,
                  child: Image.asset(
                    "assets/img/logo-1024.png",
//                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "张兵兵",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: 24,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 登录表单
  Widget _buildInputForm({
    @required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    String hintText,
    bool isPassword = false,
    double marginTop = 15,
  }) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(top: marginTop),
//      color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
//            color: Colors.red,
            height: 50,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: AppColors.secondaryElement,
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText,
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
              maxLines: 1,
              autocorrect: false,
              // 自动纠正
              obscureText: isPassword, // 隐藏输入内容, 密码框
            ),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildInputForm(
              controller:_txtController,
              marginTop: 0,
              hintText: "账号",
              keyboardType: TextInputType.text,
              isPassword: false,
            ),
            _buildInputForm(
              controller: _passController,
              hintText: "密码",
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            Container(
              width: 260,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: RaisedButton(
                child: Text("登录"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  if(this._txtController.value.text == null || this._txtController.value.text.isEmpty){
                    showToast("请输入账号!");
                    return;
                  }else if(this._passController.value.text == null || this._passController.value.text.isEmpty){
                    showToast("请输入密码!");
                    return;
                  }else{
                    print(this._txtController.value.text.isEmpty);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
