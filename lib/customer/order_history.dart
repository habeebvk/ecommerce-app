import 'package:ecommerce/customer/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IndexAppBar(name: "Order History"),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,top: 30,right: 16),
        child: Container(
          width: MediaQuery.of(context).size.width * 20,
          height: MediaQuery.of(context).size.height* 0.22,
          decoration: BoxDecoration(
            color:const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                child: Image(image: AssetImage('assets/oudh8.jpg'),width: 100,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top:20),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Id : #8935345443",style: GoogleFonts.montserrat(fontSize: 13),),
                      Text("Item : Roja Perfume",style: GoogleFonts.montserrat(fontSize: 13)),
                      Text("Price : 450Rs",style: GoogleFonts.montserrat(fontSize: 13)),
                      Text("Delivery date : 11/10/24",style: GoogleFonts.montserrat(fontSize: 13)),
                      Padding(  
                        padding: const EdgeInsets.only(top: 20),  
                        child: Row(  
                          children: [  
                            SizedBox(  
                              height: 30,
                              child: ElevatedButton(  
                                style: ElevatedButton.styleFrom(  
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                    ) 
                                  ),  
                                  backgroundColor: const Color.fromARGB(255, 111, 176, 228),  
                                ),  
                                onPressed: () {},  
                                child: Text(  
                                  "Review",  
                                  style: GoogleFonts.montserrat(fontSize: 13, color: Colors.black),  
                                ),  
                              ),  
                            ),  // Add some spacing between the buttons  
                            SizedBox(   
                              height: 30,
                              child: ElevatedButton(  
                                style: ElevatedButton.styleFrom(  
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)
                                    )  
                                  ),  
                                  backgroundColor: Colors.black,  
                                ),  
                                onPressed: () {},  
                                child: Text(  
                                  "Query",  
                                  style: GoogleFonts.montserrat(fontSize: 13, color: Color.fromARGB(255, 111, 176, 228)),  
                                ),  
                              ),  
                            ),  
                          ],  
                        ),  
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}