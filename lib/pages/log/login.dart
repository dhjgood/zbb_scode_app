import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
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
      width:120,
      height: 220,
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 76,
            height: 76,
            color: Colors.amberAccent   ,
            margin: EdgeInsets.symmetric(horizontal: 15),
          )
        ],
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
//      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
          ],
        ),
      ),
    );
  }
}