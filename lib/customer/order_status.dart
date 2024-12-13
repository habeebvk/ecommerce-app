import 'package:ecommerce/customer/widgets/appbar.dart';  
import 'package:ecommerce/customer/widgets/head.dart';  
import 'package:flutter/material.dart';  
import 'package:google_fonts/google_fonts.dart';  

class StatusScreen extends StatefulWidget {  
  const StatusScreen({super.key});  

  @override  
  State<StatusScreen> createState() => _StatusScreenState();  
}  

class _StatusScreenState extends State<StatusScreen> {  
  int _index = 0;  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: const IndexAppBar(name: 'Order Status'),  
      body: SingleChildScrollView(  
        child: Column(  
          children: [  
            Padding(  
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),  
              child: Container(  
                width: MediaQuery.of(context).size.width / 0.20,  
                height: MediaQuery.of(context).size.height * 0.22,  
                decoration: BoxDecoration(  
                    color: const Color(0xffD9D9D9),  
                    borderRadius: BorderRadius.circular(20)),  
                child: Row(  
                  children: [  
                    const Padding(  
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),  
                      child: Image(image: AssetImage('assets/oudh8.jpg'),width: 100,),  
                    ),  
                    Padding(  
                      padding: const EdgeInsets.only(left: 20, top: 20),  
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [  
                          Text("Order Id : #8935345443", style: GoogleFonts.montserrat(fontSize: 13)),  
                          Text("Item : Roja Perfume", style: GoogleFonts.montserrat(fontSize: 13)),  
                          Text("Price : 450Rs", style: GoogleFonts.montserrat(fontSize: 13)),  
                          Text("Qty : 2", style: GoogleFonts.montserrat(fontSize: 13)),  
                          Padding(  
                            padding: const EdgeInsets.only(top: 20),  
                            child: Row(  
                              children: [  
                                SizedBox(  
                                  height: 30,  
                                  child: ElevatedButton(  
                                    style: ElevatedButton.styleFrom(  
                                      shape: RoundedRectangleBorder(  
                                        borderRadius: BorderRadius.circular(10),  
                                      ),  
                                      backgroundColor: const Color(0xff312882),  
                                    ),  
                                    onPressed: () {},  
                                    child: Text("Cancel Order", style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white)),  
                                  ),  
                                ),  
                              ],  
                            ),  
                          )  
                        ],  
                      ),  
                    )  
                  ],  
                ),  
              ),  
            ),  
            const SizedBox(height: 20),  
            const headtext(name: "Order Details"),  
            Padding(  
              padding: const EdgeInsets.only(left: 40),  
              child: Stepper(  
                connectorColor: const WidgetStatePropertyAll(Colors.blue),  
                currentStep: _index,  
                onStepTapped: (int index) {  
                  setState(() {  
                    _index = index;  
                  });  
                },  
                steps: <Step>[  
                  Step(  
                    title: const Text('Order Confirmed'),  
                    content: Container(  
                      alignment: Alignment.centerLeft,  
                      child: const Column(  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [  
                          Text('Your Order has been placed'),  
                          Text("Seller has processed your order"),  
                          Text("Your Item has been picked up by courier partner")  
                        ],  
                      ),  
                    ),  
                  ),  
                  Step(  
                    title: const Text('Shipped,Expected by Nov 7'),  
                    subtitle: const Text("Ekart Logistics - FMPC3221120928"),  
                    content: Container(  
                      alignment: Alignment.centerLeft,  
                      child: const Column(  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [  
                          Text('Your Item has been Shipped'),  
                          Text("Your item has been recieved in the hub nearest to you")  
                        ],  
                      ),  
                    ),  
                  ),  
                  Step(  
                    title: const Text('Out For Delivery'),  
                    content: Container(  
                      alignment: Alignment.centerLeft,  
                      child: const Column(  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [  
                          Text('Your Item is Out for Delivery'),  
                        ],  
                      ),  
                    ),  
                  ),  
                  Step(  
                    title: const Text('Delivery,Tomorrow,Nov 8 By 11pm'),  
                    content: Container(  
                      alignment: Alignment.centerLeft,  
                      child: const Column(  
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [  
                          Text('Your item has been delivered'),  
                        ],  
                      ),  
                    ),  
                  ),  
                ],  
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}