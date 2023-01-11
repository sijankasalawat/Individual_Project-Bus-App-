import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/Login",
      routes: {
        "/":(context) => Login_page(),
        Hello.LoginRoute:(context) => Login_page(),
        Hello.RegisterRoute:(context) => Register_Page(),
        Hello.HomeRoute:((context) => Home_Page()),
        

      

      },
   
    );
  }
}

class Hello{
  static String LoginRoute="/Login";
  static String RegisterRoute="/Register";
  static String HomeRoute="/Home_Page";
}