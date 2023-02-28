import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/Product.dart';

class BillScreen extends StatelessWidget {
  final Product product;
  final List<int> selectedSeats;

  BillScreen({required this.product, required this.selectedSeats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(154, 254, 202, 46),
        title: Text('Bill '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selected seats: ${selectedSeats.join(", ")}'),
            SizedBox(height: 16.0),
            Text('Total price: ${product.price * selectedSeats.length}'),
            SizedBox(height: 16.0),
            Text('Bill Details:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product name: ${product.name}'),
                    SizedBox(height: 8.0),
                    Text('Price per seat: ${product.price}'),
                    SizedBox(height: 8.0),
                    Text('Number of seats: ${selectedSeats.length}'),
                    SizedBox(height: 8.0),
                    Text('Total price: ${product.price * selectedSeats.length}'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
             ElevatedButton(
               style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
              
  onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => BillScreen(product: product, selectedSeats: selectedSeats)),
                // );
              
   
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Payment can only be done directly !'),
      ),
    );
  },
  child: Text('Payment',style: TextStyle(backgroundColor: Colors.black),),
 
),
          ],
        ),
      ),
    );
  }
}
