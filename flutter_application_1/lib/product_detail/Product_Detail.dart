import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/product_detail/body.dart';

import '../home_page/Product.dart';
import '../home_page/vehicle.dart';

class Product_Detail extends StatelessWidget {
  final Product product;

   Product_Detail({key, required this.product}) :super(key: key);

  @override
  Widget build(BuildContext context) {
     List<Item> _cart = [];
    return  Scaffold(
      resizeToAvoidBottomInset:false,
      
     
      appBar: AppBar(
        backgroundColor: Color.fromARGB(154, 254, 202, 46),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      
      body: Body (product: product, 
       
      ),
      

    );
}
}