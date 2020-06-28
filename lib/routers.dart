import 'package:zbbscodeapp/pages/Delete.dart';
import 'package:zbbscodeapp/pages/Displace.dart';
import 'package:zbbscodeapp/pages/GroupBox.dart';
import 'package:zbbscodeapp/pages/GroupStamp.dart';
import 'package:zbbscodeapp/pages/ReturnGoods.dart';
import 'package:zbbscodeapp/pages/SendGoods.dart';
import 'package:zbbscodeapp/pages/log/Login.dart';

var staticRouters = {
   "/SendGoods"   :(context) => SendGoods(),    //发货
   "/Delete"      :(context) => Delete(),      //删除
   "/Displace"    :(context) => Displace(),   //置换
   "/GroupStamp"  :(context) => GroupStamp(),  //组跺
   "/GroupBox"    :(context) => GroupBox(),  //组箱
   "/ReturnGoods" :(context) => ReturnGoods(),  //退货
   "/Login"       :(context) => Login(),  //登录
};