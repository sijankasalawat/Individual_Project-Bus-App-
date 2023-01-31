import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth/register.dart';
import 'package:flutter_application_1/utilities/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
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
  
   bool _isObscure = true;
   bool _changeButton =false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size as Size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
            margin: EdgeInsets.only(top: size.height * 0.1),
            height: size.height * 0.85,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 30, 30, 30),
                    Color.fromARGB(255, 30, 30, 30),
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
                            color: Color.fromARGB(255, 255, 255, 255)),
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
                          color: Color.fromARGB(255, 144, 144, 144),
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
                              TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18)
                          // style: kLabelStyle,
                          ),
                      SizedBox(
                        height: 10.0,
                        
               
                      ),
                      
                      Container(
                        alignment: Alignment.centerLeft,
                        // decoration: kBoxDecorationStyle,
                        height: 50.0,
             
               

                        child: TextFormField(
                          
                          validator: ((value) {
                            if (value==null || value.isEmpty){
                              return'Please enter your email';
                            }
                          }),
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
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
                            hintStyle:TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'OpenSans',
                            ),
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
                              TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18)
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
                            obscureText: _isObscure,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.grey[500],
                              contentPadding: EdgeInsets.only(top: 15.0),
                               prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure ? Icons.visibility:Icons.visibility_off
                                ),
                                onPressed: (() {
                                  
                                  SetState:((){
                                    _isObscure=!_isObscure;

                                  });
                                }),
                                //   validator: (val) => val.length < 6 ? 'Password too short.' : null,
                                // onSaved: (val) => _password = val,

                                //   obscureText: _obscureText,
                              ),
                              hintText: 'Enter your Password',
                              hintStyle:TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'OpenSans',
                            ),
                              
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
                              color: Color.fromARGB(255, 190, 190, 190),
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
                          onPressed: () {
                            Navigator.pushNamed(context, Hello.HomeRoute);

                            // setState(() {
                            //   _changeButton=true;
                            // });
                            // Navigator.pushNamed(context, Hello.HomeRoute);
                          },
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color.fromARGB(255, 50, 50, 50),
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
                      
                      // InkWell(
                      //      onTap: () {
                      //   Navigator.pushNamed(context, Hello.RegisterRoute);
                      // },
                      //   child: Text("data"),
                    
                      // ),

                      GestureDetector(
                       onTap: () {
                         Navigator.pushNamed(context, Hello.RegisterRoute);
                       },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Don\'t have an Account? ',
                                style: TextStyle(
                                  color:Color.fromARGB(255, 170, 170, 170) ,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 190, 190, 190),
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
