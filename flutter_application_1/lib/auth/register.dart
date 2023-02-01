import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main.dart';
import '../models/user_model.dart';
import '../viewmodels/auth_viewmodel.dart';
import '../viewmodels/global_ui_viewmodel.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});
  
  

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  
    TextEditingController name = new TextEditingController();
 
  TextEditingController password = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController number = new TextEditingController();

  bool _obscureTextPassword = true;
  bool _obscureTextPasswordConfirm = true;

  late GlobalUIViewModel _ui;
  late AuthViewModel _authViewModel;
    void register() async{
    if(_formKey.currentState == null || !_formKey.currentState!.validate()){
      return;
    }
    _ui.loadState(true);
    try{
      await _authViewModel.register(
          UserModel(
              email: email.text,
              password:password.text,
            phone:number.text,
            fullname: name.text,
           
          )).then((value) {

            // NotificationService.display(
            //   title: "Welcome to this app",
            //   body: "Hello ${_authViewModel.loggedInUser?.fullName},\n Thank you for registering in this application.",
            // );
            // Navigator.of(context).pushReplacementNamed("/dashboard");
      })
          .catchError((e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString())));
      });
    }catch(err){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err.toString())));
    }
    _ui.loadState(false);
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
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
                    Color.fromARGB(255, 30, 30, 30),
                    Color.fromARGB(255, 30, 30, 30),
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
                        color: Color.fromARGB(255, 255, 255, 255)),
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
                                color: Color.fromARGB(255, 170, 170, 170),
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
                              filled: true, 
                              //<-- SEE HERE
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
                                TextStyle(color: Colors.grey[600], fontSize: 18),
                           
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
                              // border: InputBorder.none,
                              
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
                              //
                              // hintStyle: kHintTextStyle,
                            ),
                            //       validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return "Phone Number cannot be empty";
                            //   } else if (value.length < 10) {
                            //     return "Please enter a valid phone number";
                            //   }
                            //   return null;
                            // },
                            
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
                          
                          color: Color.fromARGB(255, 50, 50, 50),
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
