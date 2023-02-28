// import 'package:flutter/animation.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

// product kathmandu/pokhara
class Product {
  final String from, to, time, img, route;
  final int price, id, no;
  final Color color;

  Product(
      {required this.from,
      required this.img,
      required this.time,
      required this.to,
      required this.no,
      required this.color,
      required this.id,
      required this.price,
      required this.route});

  get seats => null;

  String? get name => null;
}

List<Product> product1 = [
  Product(
      id: 1,
      no: 10,
      price: 800,
      from: "Kathmandu ",
      to: "Pokhara",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/pkr.jpg",
      route: "Bus Ticket"),
  Product(
      id: 2,
      no: 10,
      price: 900,
      from: "Kathmandu ",
      to: "Chitwan",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/chitwans.jpg",
      route: "Bus Ticket"),
  Product(
      id: 1,
      no: 10,
      price: 900,
      from: "Kathmandu ",
      to: "Janakpur",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/janakpur.jpg",
      route: "Bus Ticket"),
  Product(
      id: 1,
      no: 10,
      price: 1000,
      from: "Kathmandu ",
      to: "Lumbini",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/lumbini.jpg",
      route: "Bus Ticket"),
];
List<Product> product2 = [
  Product(
      id: 1,
      no: 10,
      price: 1200,
      from: "Kathmandu ",
      to: "Pokhara",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/pkr.jpg",
      route: "Jeep Ticket"),
  Product(
      id: 2,
      no: 10,
      price: 1400,
      from: "Kathmandu ",
      to: "Chitwan",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/chitwans.jpg",
      route: "Jeep Ticket"),
  Product(
      id: 1,
      no: 10,
      price: 1400,
      from: "Kathmandu ",
      to: "Janakpur",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/janakpur.jpg",
      route: "Jeep Ticket"),
  Product(
      id: 1,
      no: 10,
      price: 1200,
      from: "Kathmandu ",
      to: "Lumbini",
      time: "11:00am, 2:00pm, 9:00pm",
      color: Color.fromARGB(255, 255, 255, 255),
      img: "assets/images/lumbini.jpg",
      route: "Jeep Ticket"),
];
// product2 kathmandu/chitwan
