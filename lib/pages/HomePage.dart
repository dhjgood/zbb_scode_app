import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zbbscodeapp/pages/tool.dart';
import '../routers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PDA扫码系统",
      theme: ThemeData(
//        fontFamily: "Cairo",
        scaffoldBackgroundColor: Colors.white,
//        textTheme:Theme.of(context).textTheme.apply(displayColor: Colors.black )
      ),
      home: HomeContext(),
      routes: staticRouters,
    );
  }
}


class HomeContext extends StatelessWidget {
  DateTime lastPopTime;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
            // ignore: missing_return
            onWillPop:() async {
              if(lastPopTime == null || DateTime.now().difference(lastPopTime) > Duration(seconds: 2)){
                lastPopTime = DateTime.now();
                showToast("再按一次退出");  // 可选属性看自己需求
              }else{
                lastPopTime = DateTime.now();
                // 退出app
                await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              }
            },
            child: Scaffold(
              appBar: AppBar(title: Text("PDA扫码系统")),
              body: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.9,
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  MyItem("发货", Icons.airport_shuttle, "/SendGoods"),
                  MyItem("删除", Icons.delete_outline, "/Delete"),
                  MyItem("置换", Icons.refresh, "/Displace"),
                  MyItem("组跺", Icons.playlist_add, "/GroupStamp"),
                  MyItem("组箱", Icons.apps, "/GroupBox"),
                  MyItem("退货", Icons.assignment_return, "/ReturnGoods"),
                  MyItem("登录", Icons.assignment_return, "/Login"),
                ],
              ),
              drawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
//              accountName: Text("admin"),
                      accountEmail: Text("管理员"),
                      currentAccountPicture: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage("assets/img/admin.png"),
                        ),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: ExactAssetImage("assets/img/bg.png"),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      trailing: Icon(Icons.redo),
                      title: Text("退出登录"),
                      onTap: () {
                        Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
////                        builder: (BuildContext context) => new AboutPage()));
                      },
                    ),
                  ],
                ),
              ),
            )
        );
  }
}


class MyItem extends StatelessWidget {
  String name;
  IconData icon;
  String path;

  MyItem(this.name, this.icon, this.path) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 80,
//            color: Colors.cyanAccent,
              child: Center(
                child: Icon(
                  this.icon,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            Text(this.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.white))
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, this.path);
      },
    );
  }
}
