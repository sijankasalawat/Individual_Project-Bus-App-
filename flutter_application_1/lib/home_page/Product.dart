// import 'package:flutter/animation.dart';

class Product {
  final String  from, to, time;
  final int  price, id ,no;
  // final Color color;
  
  Product(
      {required this.from,
      // required this.image,
      required this.time,
      required this.to,
      required this.no,
      // required this.color,
      required this.id,
      required this.price});
}
List<Product> product1=[
  Product(
    id: 1,
    no:10,
    price: 2000, 
    from: "Kathmandu ",
    to:"Pokhara",
    time:"11:am"
    

  ),
  Product(
    id: 2,
    no:20,
    price: 2000, 
    from: "Kathmandu",
    to:"Pokhara",
    time:"11:am"
    

  ),
    Product(
    id: 3,
    no:30,
    price: 2000, 
    from: "Kathmandu",
    to:"Pokhara",
    time:"11:am"
    

  ),
    Product(
    id: 4,
    no:40,
    price: 2000, 
    from: "Kathmandu",
    to:"Pokhara",
    time:"11:am"
    

  ),
];