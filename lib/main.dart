// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("按钮demo")),
      body: ImageWidgetDemo(),
      bottomNavigationBar: BottomAppBar(child: Text("bottom")),
    ));
  }
}

class ImageWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            // width: 300,
            // height: 500,
            // color: Colors.red,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ///圆方案一 可以放文本
                CircleAvatar(
                  radius: 200, //半径
                  backgroundImage: NetworkImage(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F07c7a646d35d00d80ab4f5a0f64d85d8ee74cc4b1c915-iOmki5_fw658&refer=http%3A%2F%2Fhbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627200084&t=2b85574c08fe102ac318a1d2cd3b8d49"),
                  child: Container(
                    alignment: Alignment(0, .5), //x y
                    // width: 200,
                    // height: 200,
                    child: Text("beautiful woman"),
                  ),
                ),

                ///fill  不规则拉升  cover 比例拉升
                SizedBox(height: 20),

                ///圆角组件,相当于一个已经有圆角的div,若子组件是矩形,将会以圆显示,否则为椭圆
                ClipOval(
                    child: Image.asset(
                  "assets/images/beauty.jpg",
                  width: 400,
                  height: 400,
                )),
                SizedBox(height: 20),

                ///裁剪矩形组件,适合用来剪切图片圆角等
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),//x y
                    // borderRadius: BorderRadius.all(Radius.circular(50)), //4个角
                    child: Image.asset("assets/images/ggg.jpg")),
              ],
            )),
      ],
    );
  }
}
