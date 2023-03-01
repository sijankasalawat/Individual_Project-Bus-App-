import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/Product.dart';
import 'package:flutter_application_1/home_page/bookconform.dart';

class JeepScreen extends StatefulWidget {
  final Product product;

  JeepScreen({required this.product});

  @override
  _JeepScreenState createState() => _JeepScreenState();
}

class _JeepScreenState extends State<JeepScreen> {
  List<int> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset("assets/images/paper.jpg").color,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(154, 254, 202, 46),
        title: Text('Select seats'),
      ),
      body: Column(
        
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: 8, // set itemCount to 20 to display 20 seats
              itemBuilder: (context, index) {
                final seat = index + 1; // calculate seat number based on index
                final isSelected = selectedSeats.contains(seat);
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedSeats.remove(seat);
                      } else {
                        selectedSeats.add(seat);
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      
                      color: isSelected ? Color.fromARGB(255, 243, 201, 33) : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        seat.toString(),
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
               style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
            onPressed: () {
              if (selectedSeats.isNotEmpty) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BookingConfirmationScreen(
                    product: widget.product,
                    selectedSeats: selectedSeats,
                  ),
                ));
              }
            },
            child: Text('Confirm booking'),
          ),
        ],
      ),
    );
  }
}
