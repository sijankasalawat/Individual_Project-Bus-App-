import 'package:flutter/material.dart';


import 'Product.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  // final Function press;
  const ItemCart({
    key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
       
        
        // height: 50,
        // width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/paper.jpg"),
        fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          // color: Colors.red,
          
        ),
        // height:100,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Text("Bus Ticket",style: TextStyle(  color: Colors.grey[600],
                        fontSize: 20,fontWeight: FontWeight.bold))
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "From ",
                    style: TextStyle(color: Colors.grey[600],
                        fontSize: 15,fontWeight: FontWeight.bold)
                  ),
                  Icon(Icons.subdirectory_arrow_right),
                  Text("To ",style: TextStyle(color: Colors.black,
                        fontSize: 15,fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    product1[0].from,
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Text(
                    product1[0].to,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                   Text("Time: ",style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold),),
                
                  Text(product1[0].time,style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Price : ",style: TextStyle(color: Colors.black,
                        fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text:"Rs${product1[0].price}",style: TextStyle(color: Colors.black,
                        fontSize: 15,fontStyle: FontStyle.italic
                        ))
                    

                  ],
                  
                    ))
                ],
                //  mainAxisAlignment:MainAxisAlignment.center,
                // children: <Widget>[
                //   Text("Price"),
                //   Text( "\$${product1.price}")

                // ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
