import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 238, 24),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[900]),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
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
  bool invisible = true;
  bool _obscureText = true;
   bool _isObscure = true;
   bool _changeButton = false;
  void inContact(TapDownDetails details) {
    setState(() {
      invisible = false;
    });
  }

  void outContact(TapUpDetails details) {
    setState(() {
      invisible = true;
    });
  }
  // String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size as Size;
    return SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.0),
            width: 500,
            height: size.height * 1.1,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: <Widget>[
                  Text(
                    "Create an Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Hello.LoginRoute);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already Registered? ',
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'login in here',
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
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('FULL NAME',
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
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.grey[500],
                              contentPadding: EdgeInsets.only(top: 15.0),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Enter your Full Name',
                              hintStyle:TextStyle(
                              color: Colors.grey[200],
                            fontFamily: 'OpenSans',
                            ),

                              // hintStyle: kHintTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
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
                              hintStyle:TextStyle(
                              color: Colors.grey[200],
                            fontFamily: 'OpenSans',
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('PHONE NUMBER',
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
                                Icons.phone,
                                color: Colors.white,
                              ),
                              hintText: 'Enter your Phone Number',
                              hintStyle:TextStyle(
                              color: Colors.grey[200],
                            fontFamily: 'OpenSans',
                            ),
                              // hintStyle: kHintTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
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
                            obscureText: _isObscure,
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
                              color: Colors.grey[200],
                            fontFamily: 'OpenSans',
                            ),
                            ),
                          ),
                        ),
                        // GestureDetector(
                        //   onTapDown:
                        //       inContact, //call this method when incontact
                        //   onTapUp:
                        //       outContact, //call this method when contact with screen is removed
                        //   child: Icon(
                        //     Icons.remove_red_eye,
                        //     color: Color.fromARGB(255, 106, 52, 52),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 30),
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          _changeButton=true;
                        });
                      }),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: MaterialButton(
                          elevation: 5.0,
                          onPressed: () => print('register Button Pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            
                          ),
                          
                          color: Colors.grey[900],
                          child: Text(
                            'RREGISTER',
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
