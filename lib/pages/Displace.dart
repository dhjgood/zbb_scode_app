import 'package:flutter/material.dart';
import 'package:zbbscodeapp/pages/tool.dart';

class Displace extends StatefulWidget {
  Displace({Key key}) : super(key: key);

  @override
  _DisplaceState createState() {
    return _DisplaceState();
  }
}

class _DisplaceState extends State<Displace> {
  String titleName = "置换";
  String resName = "列表~";
  int getmode = 1;

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
//            decoration: BoxDecoration(
//                border: Border(
//                  bottom: BorderSide(color: Colors.black12, width: 0.5),
//                  top: BorderSide(color: Colors.black12, width: 0.5),
//                )),
            color: Colors.white,
            width: double.infinity,
            height: 305,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(235, 237, 240, 1), width: 1),
                    )),
//                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                            title: Text(
                          "坏码：0",
                          style: TextStyle(fontSize: 20),
                        )),
                        Container(
                          height: 90,
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int i) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Text(
                                        "",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    )
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(235, 237, 240, 1), width: 1),
                    )),
//                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                            title: Text(
                          "新码：0",
                          style: TextStyle(fontSize: 20),
                        )),
                        Container(
                          height: 90,
                          child: ListView.builder(
                              itemCount: 0,
                              itemBuilder: (BuildContext context, int i) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Text(
                                        "",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    )
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //     color:  Color.fromRGBO(241, 243, 245, 1),
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

  //选择select
  Widget _centerSct() {
    return Container(
        width: double.infinity,
        height: 70,
        color: Colors.red,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: Container(
//                          decoration: BoxDecoration(
//                            border: Border(
//                              right: BorderSide(
//                                color: Colors.black54,
//                                width: 0.5
//                              )
//                            )
//                          ),
                height: 70,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  alignment: Alignment(-1, 0),
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "坏码",
                        style: TextStyle(fontSize: 18),
                      ),
                      Radio(
                        value: 1,
                        onChanged: (v) {
                          setState(() {
                            this.getmode = v;
                          });
                        },
                        groupValue: this.getmode,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("新码", style: TextStyle(fontSize: 18)),
                      Radio(
                        value: 2,
                        onChanged: (v) {
                          setState(() {
                            this.getmode = v;
                          });
                        },
                        groupValue: this.getmode,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
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
                _centerSct(),
                _BottomBtn(),
              ],
            ),
          )),
    );
  }
}
