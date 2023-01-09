import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Body() ,

    );
  }
}
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      child:Column(
        children: <Widget>[
          
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top:50),
                 child: Image.asset(
                       "assets/images/bus_App_Logo.png",
                        height: 150,
                        width: 150,),
               ),
             ],
           ),
          
        ]) ,
     
      
      

      
    );
  }
}