// import 'package:flutter/animation.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
// product kathmandu/pokhara
class Product {
  final String  from, to, time;
  final int  price, id ,no;
  final Color color;
  
  Product(
      {required this.from,
      // required this.image,
      required this.time,
      required this.to,
      required this.no,
      required this.color,
      required this.id,
      required this.price});
}
List<Product> product1=[
  Product(
    id: 1,
    no:10,
    price: 12000, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
     ),
  Product(
    id: 2,
    no:10,
    price: 2000, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
    

  ),
   Product(
    id: 1,
    no:10,
    price: 2000, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
    

  ),
    Product(
    id: 1,
    no:10,
    price: 12000, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
    

  ),
  
];
List<Product> product2=[
 Product(
    id: 1,
    no:10,
    price: 2000, 
    from: "pokhara  ",
    to:"kathmandu",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
    

  ),
  Product(
    id: 1,
    no:10,
    price: 2000, 
    from: "pokhara  ",
    to:"kathmandu",
    time:"11:am",
    color: Color.fromARGB(255, 177, 184, 190),
    

  ),
];
// product2 kathmandu/chitwan
