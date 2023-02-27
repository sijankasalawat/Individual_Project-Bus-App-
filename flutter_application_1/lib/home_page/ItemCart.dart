import 'package:flutter/material.dart';



import '../product_detail/Product_Detail.dart';
import 'Product.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCart({
   key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Product_Detail(product: product),
            ),
          );
        },
        child: Container(
          
          width: 200,
          
          
          decoration: BoxDecoration(
  
            color:Color.fromARGB(180, 91, 91, 91),
           
            boxShadow: [
              
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              
              children: <Widget>[
                Container(
                  height: 115,
                  //  width:155,
                   child: Column(
                    children: [
                      Image.asset(product.img,fit: BoxFit.cover,)
                    ],
                   ),
                   


                ),

                
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Row(
                    children: [
                     Text(product.from,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                     Text("to ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                     Text(product.to,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14))

                    ],
                  ),
                ),
                  
             
              
               
                
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Price: ", style: TextStyle(color: Color.fromARGB(255, 48, 48, 48),
                            fontSize: 15,fontWeight:FontWeight.bold)),
                          TextSpan(text: "Rs${product.price}", style: TextStyle(color: Color.fromARGB(255, 21, 0, 255),
                            fontSize: 15, fontStyle: FontStyle.italic
                          ))
                        ],
                      )
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
