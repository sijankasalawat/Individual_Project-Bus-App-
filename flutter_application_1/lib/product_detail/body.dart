import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/home_page/Product.dart';
import 'package:flutter_application_1/home_page/bus.Seat.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(color: Color.fromARGB(188, 254, 202, 46)),
      
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height:double.minPositive,
            width:double.infinity,
            child: Column(
              children: [
                Image.asset(product.img)],
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              height:350,
              width:double.infinity,
            
               decoration: BoxDecoration(
                 image: DecorationImage(
                image: AssetImage("assets/images/paper.jpg"),
                fit: BoxFit.cover),
             
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
             
                )),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("From ${product.from} To ${product.to}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                      ),
                      Text("Available Time",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),),
                      Text(product.time,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.blue,fontStyle: FontStyle.italic)),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Text("Our ${product.route} Features : ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),),
                      ),
                            Text("Free WIFI, A/C and Fan System, Moblie Charge, Mineral water, First AID, ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.blue,fontStyle: FontStyle.italic),),

                    
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:15),
                            child: Text("Price : ${product.price}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Color.fromARGB(255, 0, 0, 0),fontStyle: FontStyle.italic)),
                          )
                        
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              onPressed: (() {
                                 Navigator.push(context, MaterialPageRoute(
                            builder: (context) => BookingScreen(product:product,),

                        ));
                              }),
                              child: Text(
                                "Book Ticket",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )),
                          ),
                           

                        ],
                      )


                    ],
                   
                  ),
                ),
            ),
          )

        
        ],
      ),
      
    );
  }
}