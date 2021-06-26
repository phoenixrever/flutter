// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("按钮demo")),
      body: FormDemo(),
      bottomNavigationBar: BottomAppBar(child: Text("bottom")),
    ));
  }
}

class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormDemoStateDemo();
  }
}

class FormDemoStateDemo extends State<FormDemo> {
  String username = '';
  String password = '';

  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
          key: globalFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    icon: Icon(Icons.people), labelText: "username"),
                // onChanged: (value){
                //   username=value;
                // },
                onSaved: (value) {
                  username = value!;
                  print("onsaved-------$value");
                },
                validator: (value) {
                  if (value == null || value.length == 0) return "用户名不能为空";
                  if (!(value.length >= 6 && value.length <= 20))
                    return "用户名在6到20位之间";
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                obscureText: true,
                //...作为密码
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), labelText: "password"),
                // onChanged: (value){
                //   password=value;
                // },
                onSaved: (value) {
                  password = value!;
                  print("onsaved----$value");
                },
                validator: (value) {
                  if (value == null || value.length == 0) return "密码不能为空";
                  if (!(value.length >= 6 && value.length <= 20))
                    return "密码6到20位之间";
                },
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      globalFormKey.currentState!.save();
                      /// autovalidateMode: AutovalidateMode.always, 开启自动验证 不需要这个
                      /// 所以 onChange赋值还是能用的
                      // globalFormKey.currentState!.validate();
                      print("username:$username<=========>password:$password");
                    },
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                      onPrimary: Colors.white,
                    )),
              ),
            ],
          )),
    );
  }
}
