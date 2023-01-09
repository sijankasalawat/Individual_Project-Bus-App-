import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

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
        Route.LoginRoute:(context) => Login_page(),
        

      

      },
   
    );
  }
}
class Route{
  static String LoginRoute="/Login";
}