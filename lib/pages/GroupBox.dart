import 'package:flutter/material.dart';

class GroupBox extends StatefulWidget {
  GroupBox({Key key}) : super(key: key);

  @override
  _GroupBoxState createState() {
    return _GroupBoxState();
  }
}

class _GroupBoxState extends State<GroupBox> {
  String titleName = "组箱";
  String resName = "列表~";

  // item列表参数
  double FontSize = 25;
  double Cheight = 60;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // 信息
  Widget _TopInfo() {
    return Expanded(
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text(
                this.titleName + this.resName,
                style: TextStyle(fontSize: 20),
              )),
          Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12, width: 0.5),
                  top: BorderSide(color: Colors.black12, width: 0.5),
                )),
            width: double.infinity,
            height: 380,
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
//                        color:  Color.fromRGBO(241, 243, 245, 1),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: this.Cheight,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black12, width: 1),
                              )),
                          child: Text(
                            "产品名称：",
                            softWrap: false,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: this.FontSize),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: this.Cheight,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black12, width: 1),
                              )),
                          child: Text(
                            "已扫数量：10",
                            softWrap: false,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: this.FontSize),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }

  //按钮
  Widget _BottomBtn() {
    double FontSize = 18;
    double IconSize = 20;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    print("清除");
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
//            color: Colors.cyanAccent,
                              child: Center(
                                child: Icon(
                                  Icons.info,
                                  size: IconSize,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              "清除",
                              style: TextStyle(
                                  color: Colors.white, fontSize: FontSize),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
//            color: Colors.cyanAccent,
                                child: Center(
                                  child: Icon(
                                    Icons.check_circle,
                                    size: IconSize,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "提交",
                                style: TextStyle(
                                    color: Colors.white, fontSize: FontSize),
                              )
                            ],
                          )),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
//            color: Colors.cyanAccent,
                                child: Center(
                                  child: Icon(
                                    Icons.cancel,
                                    size: IconSize,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "删除",
                                style: TextStyle(
                                    color: Colors.white, fontSize: FontSize),
                              )
                            ],
                          )),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(245, 245, 245, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(this.titleName),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _TopInfo(),
//                _centerSct(),
                _BottomBtn(),
              ],
            ),
          )),
    );
  }
}