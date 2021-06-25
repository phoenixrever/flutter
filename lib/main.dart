import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("title")),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          ProductItem("apple", "MacPro Book",
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F2c525c4636848fbe2f37cfee6280326de279cf2a5060-6x0Ms7_fw658&refer=http%3A%2F%2Fhbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627118595&t=e03ef73bf819a64d7aafab08ac926776"),
          ProductItem("Android", "samsung",
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic2.zhimg.com%2Fv2-f11aa3def24ab87a72ec2d3345f2e839_r.jpg&refer=http%3A%2F%2Fpic2.zhimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627117907&t=1701c325a84c3c1d0a2415ea29da71f7"),
          ProductItem("sony", "sony Entertainment",
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.v3wall.com%2Fwallpaper%2F1366_768%2F1007%2F1366_768_20100710093808112555.jpg&refer=http%3A%2F%2Fwww.v3wall.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627117922&t=79d2d6c2edfc89642c2fe6a48e2d58d1"),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title1;

  final String title2;

  final String imageUrl;

  ProductItem(this.title1, this.title2, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2)
      ),
      child: Column(
        children: [
          Text(
            title1,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(title2),
          SizedBox(height: 20),
          Image.network(imageUrl)
        ],
      ),
    );
  }
}
