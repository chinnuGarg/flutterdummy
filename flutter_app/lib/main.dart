import 'package:flutter/material.dart';
import 'package:flutter_app/helper/Constants.dart';
import 'package:flutter_app/designfile/Login.dart';
import 'package:flutter_app/designfile/Home.dart';
void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget{
  final routes=<String,WidgetBuilder>{
    loginPageTag: (context) => Login(),
    homePageTag: (context) => Home(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(primaryColor: appDarkGreyColor),
      home: Login(),
      routes: routes,
    );
  }

}

