import 'package:flutter/material.dart';

// void main() {
  // runApp(Text("hello world",textDirection:TextDirection.ltr));
  // runApp(Center(
  //   child: Text(
  //       "hello world",
  //       textDirection:TextDirection.ltr,
  //       style: TextStyle(
  //         fontSize: 30,
  //         color: Colors.purpleAccent
  //       ),
  //   ),
  // ));
  // runApp(MaterialApp(
  //   title: "Hello World", //多应用程序切换时候的标题
  //   home: Scaffold(            //脚手架
  //     appBar: AppBar(          //导航栏
  //       title: Text("Hello Title"),
  //     ),
  //     body: Center(
  //       child: Text(
  //         "Hello World",
  //         textDirection: TextDirection.ltr,
  //         style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
  //       ),
  //     ),
  //   ),
  // ));

//   runApp(MyApp());
// }

main()=>runApp(MyApp());

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(value: true, onChanged: (value) => print("Hello World")),
        Text(
          "同意协议",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20),
        )
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
      ),
    );
  }
}
