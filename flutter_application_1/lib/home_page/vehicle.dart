// import 'package:flutter/animation.dart';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

// Item kathmandu/pokhara
class Item {
  final String title, img;

  final Color color;

  Item({
    required this.title,
    // required this.image,
    required this.img,
    // required this.to,
    required this.color,
  });

  get length => null;
}

List<Item> Item1 = [
  Item(
    title: "Bus",
    img: "assets/imges/buses.jpg",
    color: Color.fromARGB(255, 177, 184, 190),
  ),
    Item(
    title: "jeep",
    img: "assets/imges/jeep.jpg",
    color: Color.fromARGB(255, 177, 184, 190),
  ),
    Item(
    title: "Van",
    img: "assets/imges/van.jpg",
    color: Color.fromARGB(255, 177, 184, 190),
  ),
    Item(
    title: "car",
    img: "assets/imges/car.jpg",
    color: Color.fromARGB(255, 177, 184, 190),
  ),
];
