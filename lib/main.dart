import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

///state没有 @immutable 注解  可以定义变量
class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ///类似react 改变状态刷新页面
                setState(() {
                  counter++;
                });
              },
              child: Text("记数++"),
            ),
            ElevatedButton(
              onPressed: () {
                ///类似react 改变状态刷新页面
                setState(() {
                  counter--;
                });
              },
              child: Text("记数--"),
            ),
          ],
        ),
        Text(
          "$counter",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20),
        ),
      ],
    ));
  }
}

///无法实现动态数字内容改变
class ContentWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            ElevatedButton(
              onPressed: () => {print("记数++")},
              child: Text("记数++"),
            ),
          ],
        ),
        Text(
          "同意协议",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20),
        ),
      ],
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World", //多应用程序切换时候的标题
      home: Scaffold(
        //脚手架
        appBar: AppBar(
          //导航栏
          title: Text("Hello Title"),
        ),
        body: ContentWidget(),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      ),
    );
  }
}
