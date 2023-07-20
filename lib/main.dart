import 'package:flutter/material.dart';
import 'package:login/HomeScreen.dart';
import 'package:login/LoginScreen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      routes: {LoginScreen.routeName: (_)=> LoginScreen(),
        HomeScreen.routeName: (_)=> HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}