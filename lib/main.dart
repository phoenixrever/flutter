// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("按钮demo")),
      body: TextFieldDemo(),
      bottomNavigationBar: BottomAppBar(child: Text("bottom")),
    ));
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldStateDemo();
  }
}

class TextFieldStateDemo extends State<TextFieldDemo> {
 final textC= TextEditingController();

  @override
  void initState() {
    super.initState();
    textC.text="我是初始值";
    textC.addListener(() {
      print("监听到值的改变====>${textC.text}");  ///监听变化的值
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            //装饰品; 装饰图案; 装饰风格;
            icon: Icon(Icons.people),
            labelText: "用户名",
            hintText: "请输入用户名",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.withOpacity(0.9),  // 边框颜色
                  width: 2
              ),
            ),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue.withOpacity(0.9),
                width: 2
              ),
            ),
            filled: true,
            fillColor: Colors.white10
          ),
          onChanged: (value) {
            print(value);
          },
          onSubmitted: (value){
            print(value);
          },
          controller: textC   ///监听值的改变
        ),
      ),
    );
  }
}
