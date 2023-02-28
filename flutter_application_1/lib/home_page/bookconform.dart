import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/Billpage.dart';
import 'package:flutter_application_1/home_page/Product.dart';

class BookingConfirmationScreen extends StatelessWidget {
  final Product product;
  final List<int> selectedSeats;

  BookingConfirmationScreen({required this.product, required this.selectedSeats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(154, 254, 202, 46),
        title: Text('Booking confirmation'),
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
            Text('Enter your information:'),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full name',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
               style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
              
  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BillScreen(product: product, selectedSeats: selectedSeats)),
                );
              
    // TODO: Implement booking logic
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Booking confirmed!'),
      ),
    );
  },
  child: Text('Book now',style: TextStyle(backgroundColor: Colors.black),),
 
),
          ],
        ),
      ),
    );
  }
}
