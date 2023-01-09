import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utilities/constants.dart';
import 'package:flutter/services.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 238, 24),
      body: Body(),
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
    Size size = MediaQuery.of(context).size as Size;
    return SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset(
                  "assets/images/bus_App_Logo.png",
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.09),
            height: size.height * 0.65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "sign in to continue.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('EMAIL',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 18)
                          // style: kLabelStyle,
                          ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        // decoration: kBoxDecorationStyle,
                        height: 50.0,

                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.grey[500],
                            contentPadding: EdgeInsets.only(top: 15.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: 'Enter your Email',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('PASSWORD',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 18)
                          // style: kLabelStyle,
                          ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        // decoration: kBoxDecorationStyle,
                        height: 50.0,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.grey[500],
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 15.0),
                            prefixIcon: Icon(
                              Icons.key,
                              color: Colors.white,
                            ),
                            hintText: 'Enter your Password',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          // style: flat,
                          onPressed: () =>
                              print('Forgot Password Button Pressed'),

                          // padding: EdgeInsets.only(right: 0.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize:15.0,
                            ),

                            // style: kLabelStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: MaterialButton(
                          elevation: 5.0,
                          onPressed: () => print('Login Button Pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.grey[900],
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('Sign Up Button Pressed'),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don\'t have an Account? ',
                                style: TextStyle(
                                  color:Colors.grey[900] ,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
