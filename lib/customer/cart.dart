import 'package:ecommerce/customer/widgets/appbar.dart';  
import 'package:ecommerce/customer/widgets/cartwidget.dart';  
import 'package:ecommerce/customer/widgets/head.dart';  
import 'package:flutter/material.dart';  
import 'package:google_fonts/google_fonts.dart';  

class CartScreen extends StatefulWidget {  
  const CartScreen({super.key});  

  @override  
  State<CartScreen> createState() => _CartScreenState();  
}  

class _CartScreenState extends State<CartScreen> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: IndexAppBar(name: "Cart"),  
      body: SingleChildScrollView(  
        padding: const EdgeInsets.symmetric(horizontal: 20),   
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [  
            const SizedBox(height: 40),  
            const CartWidget(name: 'assets/prf9.jpg', perfumeName: 'Roja Perfumes', price: '450Rs'),  
            const SizedBox(height: 20),  
            const CartWidget(name: 'assets/prf3.jpg', perfumeName: 'Park Avenue', price: '300Rs'),  
            const SizedBox(height: 30),   
            Text("Location",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),  
            const SizedBox(height: 5),  
            TextFormField(  
              decoration: InputDecoration(  
                contentPadding: const EdgeInsets.only(left: 20),  
                filled: true,  
                fillColor: Colors.grey,  
                hintText: "Enter Location",  
                border: OutlineInputBorder(  
                  borderRadius: BorderRadius.circular(30),  
                  borderSide: BorderSide.none,   
                ),  
                focusedBorder: OutlineInputBorder(  
                  borderRadius: BorderRadius.circular(30),  
                  borderSide: const BorderSide(color: Colors.black),   
                ),  
              ),  
            ),  
            const SizedBox(height: 10),  
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: [  
                SizedBox(  
                  height: 40,  
                  child: ElevatedButton(  
                    style: ElevatedButton.styleFrom(  
                      backgroundColor: const Color(0xff312882),  
                    ),  
                    onPressed: () {},  
                    child: Text("Share current location", style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white)),  
                  ),  
                ),  
                SizedBox(  
                  height: 40,  
                  child: ElevatedButton(  
                    style: ElevatedButton.styleFrom(  
                      backgroundColor: Colors.red,  
                    ),  
                    onPressed: () {},  
                    child: Text("Submit", style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white)),  
                  ),  
                ),  
              ],  
            ),  
            const SizedBox(height: 30),
            Text("Order Summary",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,), 
            Container(  
              width: MediaQuery.of(context).size.width / 1.1,  
              color: const Color(0xff312882),  
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.start,  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [ 
                  SizedBox(height: 15,),     
                  buildOrderItem("Roja Perfumes", 450),  
                  buildOrderItem("Park Avenue", 300),  
                  buildOrderItem("Discount Price", -80),  
                  buildOrderItem("Delivery Price", 40),  
                  const SizedBox(height: 10), // Space before the divider  
                  Divider(),  
                  const SizedBox(height: 10), // Space after the divider  
                  Row(  
                    children: [  
                      const SizedBox(width: 20),  
                      Text("Total Price", style: GoogleFonts.montserrat(fontSize: 15, color: Colors.amber)),  
                      SizedBox(width: 140,), // Use Spacer to push the price to the right  
                      Text("Rs 1470", style: GoogleFonts.montserrat(fontSize: 15, color: Colors.amber)),  
                    ],  
                  ),  
                  const SizedBox(height: 10), // Added space before the button  
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: SizedBox(  
                      width: MediaQuery.of(context).size.width/3.2,  
                      height: 40,  
                      child: ElevatedButton(  
                        onPressed: () {},   
                        child: Text("Checkout", style: GoogleFonts.montserrat(fontSize: 13, color: Colors.black)),  
                      ),  
                    ),
                  ),  
                  const SizedBox(height: 20), // Added space after the button  
                ],  
              ),  
            ),  
            SizedBox(height: 20,)
          ],  
        ),  
      ),  
    );  
  }  

  Widget buildOrderItem(String itemName, double price) {  
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(  
        children: [  
          const SizedBox(width: 20),   
          Text(itemName, style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white)),  
          const Spacer(),   
          Text("Rs ${price.abs()}", style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white)),  
          const SizedBox(height: 10),  
        ],  
      ),
    );  
  }  
}