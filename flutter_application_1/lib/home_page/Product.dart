// import 'package:flutter/animation.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
// product kathmandu/pokhara
class Product {
  final String  from, to, time,img;
  final int  price, id ,no;
  final Color color;
  
  Product(
      {required this.from,
      required this.img,
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
    price: 800, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
    img:"assets/images/pkr.jpg",
     ),
  Product(
    id: 2,
    no:10,
    price: 900, 
    from: "Kathmandu ",
    to:"Chitwan",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
   Product(
    id: 1,
    no:10,
    price: 900, 
    from: "Kathmandu ",
    to:"Janakpur",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
    Product(
    id: 1,
    no:10,
    price: 1000, 
    from: "Kathmandu ",
    to:"Lumbini",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
  
];
List<Product> product2=[
Product(
    id: 1,
    no:10,
    price: 1200, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
     ),
  Product(
    id: 2,
    no:10,
    price: 1400, 
    from: "Kathmandu ",
    to:"Chitwan",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
   Product(
    id: 1,
    no:10,
    price: 1400, 
    from: "Kathmandu ",
    to:"Janakpur",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
    Product(
    id: 1,
    no:10,
    price: 1200, 
    from: "Kathmandu ",
    to:"Lumbini",
    time:"11:00am, 2:00pm, 9:00pm",
    color: Color.fromARGB(255, 177, 184, 190),
     img:"assets/images/pkr.jpg",
    

  ),
];
// product2 kathmandu/chitwan
