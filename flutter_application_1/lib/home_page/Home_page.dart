import 'dart:convert';
import 'dart:math';

import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/Product.dart';
import 'package:flutter_application_1/home_page/vehicle.dart';
import 'package:flutter_application_1/utilities/constants.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'ItemCart.dart';
//Global variable for the notification plugin
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  
  get _handleNavigationChange => null;
   void showNotification() async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "channelId",
      "channelName",
      importance: Importance.max,
      priority: Priority.max,
      ticker: "test",
      enableLights: true,
      enableVibration: true,
    );

    //for ios
    DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      "Bus Application",
      "Welcome to Bus App",
      notificationDetails,
    );

    DateTime time = DateTime.now().add(Duration(seconds: 10));
    //time based notification
    await flutterLocalNotificationsPlugin.schedule(
        0, "Family pack", "Ticket offer", time, notificationDetails,
        payload: "ok");
  }

  // //App launch notification
  // void checkForNotification() async {
  //   NotificationAppLaunchDetails? details =
  //       await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  //   if (details != null) {
  //     if (details.didNotificationLaunchApp) {
  //       NotificationResponse? response = details.notificationResponse;
  //       if (response != null) {
  //         String? payload = response.payload;
  //         // log("Noitification payload: $payload");
  //       }
  //     }
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   checkForNotification();
  //   showNotification();
  // }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      extendBodyBehindAppBar: true,
       backgroundColor: Image.asset('assets/images/highway.jpg').color,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
       leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 200, 200, 200),
          ),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                backgroundImage: AssetImage("assets/images/bus_App_Logo.png"),
              ),
            ),
          )

          // GestureDetector(
          //     onTap: () {/* Write listener code here */},
          //     child: Icon(
          //       Icons.settings,
          //       color: Colors.black, // add custom icons also
          //     ),
          //   ),
        ],
      ),
     
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            // Body0(),
            Body(),
            Body2(),
            // Body3(),
          ],
        ),
      ),
      // bottomNavigationBar: FluidNavBar(
      //   // (1)
      //   icons: [
      //     // (2)
      //     FluidNavBarIcon(
      //       icon: Icons.home,
      //     ),

      //     FluidNavBarIcon(icon: Icons.message),
      //     // FluidNavBarIcon(icon: Icons.home), // (3)
      //     FluidNavBarIcon(icon: Icons.notifications),
      //   ],
      //   onChange: _handleNavigationChange,
      //   style: FluidNavBarStyle(
      //       barBackgroundColor: Color.fromARGB(255, 253, 238, 24),
      //       iconBackgroundColor: Color.fromARGB(255, 0, 0, 0),
      //       iconSelectedForegroundColor: Color.fromARGB(255, 255, 255, 255),
      //       iconUnselectedForegroundColor: Colors.grey),
      //   // onChange: _handleNavigationChange,                  // (4)
      // ),
     
    );
  }
}

// class Body0 extends StatelessWidget {
//   const Body0({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String searchText = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/highway.jpg'),
            fit: BoxFit.fill
          )
        
      ),
      // scrollDirection:AxisDirection.vertical;
      // backgroundColor:Colors.red;
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top:120, bottom:80),
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Color.fromARGB(108, 255, 255, 255),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text("Sijan Kasalawat",
                            style: TextStyle(
                                color: Color.fromARGB(215, 40, 40, 40),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "ID: 3339",
                          style: TextStyle(
                              color: Color.fromARGB(255, 40, 40, 40),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        )
                      ],
                    )),
                    CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          backgroundImage: AssetImage("assets/images/man.png"),
                        maxRadius: 30,
                        minRadius: 30
                        // backgroundImage: AssetImage("assets/images/bus_App_Logo.png"),
                        )
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                // height: max(10,10),

                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AnimatedSearchBar(
                    label: "Search Ticket",
                    onChanged: (value) {
                      print("value on Change");

                      setState(() {
                        searchText = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
         
        ),
        
      ),

    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 20, 46, 25)),
      // scrollDirection: Axis.vertical,

      child: Padding(
        padding: const EdgeInsets.only(
          top: 0,
        ),
        child: Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              // bottomRight: Radius.circular(30),
              //  bottomLeft: Radius.circular(30),
            ),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                    child: Text(
                      "AVALIABLE TICKETS",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              Categories(),
              // ignore: prefer_const_constructors
              // Expanded(
              //     child: GridView.builder(
                    
              //   itemCount: product1.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 1,
              //     //height of ticket paper
              //     childAspectRatio: 2.5,
              //   ),
              //   itemBuilder: (context, index) => ItemCart(
              //     product: product1[index],
              //   ),
              // ))
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ListView.builder(
                      scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
        itemCount: item.length,
        itemBuilder: (context, index) => Items(
                item: Item1[index],
                // press: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         // builder: ((context) => Product_Detail(
                //         //       product: product1[index],
                //         //     )
                //         //     )
                //             )),
              ),
        ),
      );
   
  }

     
    
  
}
class Items extends StatelessWidget {
  const Items({super.key, required Item item});

  @override
  Widget build(BuildContext context) {
    var item;
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
      ),
      child: Column(
        children: [
         Row(
          children: [
            Text(item.title),
            Image.asset(item.img,height: 30, width: 30,)
          ],
         )
        ],
      ),
        
    );
  }
}

// class Body3 extends StatefulWidget {
//   const Body3({super.key});

//   @override
//   State<Body3> createState() => _Body3State();
// }

// class _Body3State extends State<Body3> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 255, 255, 255),
//       ),
//       width: double.infinity,
//       height: 30,
//     );
//   }
// }
