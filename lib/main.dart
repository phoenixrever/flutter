import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("按钮demo")),
      // body: ContentWidget(),
      body: ButtonDemo(),
      bottomNavigationBar: BottomAppBar(child: Text("bottom")),
    ));
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextDemo();
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "花月本无痕----------------------------------------------------\n浪迹天涯的落魄",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xffff0000),
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis, //花月本无痕...
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "hello\n",
                style: TextStyle(fontSize: 20, color: Colors.green)),
            TextSpan(
                text: "hello\n",
                style: TextStyle(fontSize: 20, color: Colors.green)),
            TextSpan(
                text: "hello\n",
                style: TextStyle(fontSize: 20, color: Colors.green)),
          ]))
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {},
              child: Row(   //row默认占据整行
                mainAxisAlignment: MainAxisAlignment.center,//垂直居中
                mainAxisSize:MainAxisSize.min , //自动适应元素宽度 重要
                children: [
                  Icon(Icons.call,color: Colors.yellowAccent,),
                  SizedBox(width: 10),
                  Text("hello google"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent,
                //背景色
                onPrimary: Colors.white,
                //字体色
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(fontSize: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25) //边框角度
                    ),
              )),
          //升降按钮?
          TextButton(
              onPressed: () {},
              child: Text(
                "hello google",
              ),
              style: ButtonStyle(
                  backgroundColor:
                      ///Convenience method   方便方法
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:   //字体颜色
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 30)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))))),
          OutlinedButton(
              onPressed: () {},
              child: Text("hello google"),
          style: OutlinedButton.styleFrom(
            primary: Colors.red,
          )),
          FloatingActionButton(onPressed: () {}, child: Text("hello google")),
        ],
      ),
    );
  }
}
