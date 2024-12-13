import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_quantity/input_quantity.dart';

// ignore: camel_case_types
class favourite extends StatelessWidget {
  final String image;
  final String perfumeName;
  final String price;
  const favourite({
    super.key, required this.image, required this.perfumeName, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(   
       width: MediaQuery.of(context).size.width* 2,  
       height: MediaQuery.of(context).size.height * 0.25, 
       decoration: BoxDecoration(  
         color: const Color(0xff006699),  
         borderRadius: BorderRadius.circular(20),  
       ), 
       child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Image(image: AssetImage(image),width: 120,height: 120,),
             ),
             SizedBox(width: 10,),
             Padding(
               padding: const EdgeInsets.only(top: 20,left: 20),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(perfumeName,style: GoogleFonts.montserrat(fontSize: 13,color: Colors.white),),
                   Row(
                     children: [
                       Text(price,style: GoogleFonts.montserrat(fontSize: 13,color: Colors.white),),
                       const SizedBox(width: 5,),
                     ],
                   ),
                  const InputQty(minVal: 0,),
                   SizedBox(height: 5,),
                   Column(               
                     children: [
                      SizedBox(height: 10,),                     
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)
                                  )
                                )),
                                backgroundColor: WidgetStatePropertyAll(Colors.white),
                                foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 0, 76, 255))
                              ),
                             onPressed: (){}, child: const Text("Add to Cart",style: TextStyle(fontSize: 10),)),
                          ),
                            Container(
                              height: 30,
                              width: 100,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                )),
                                  foregroundColor: WidgetStateProperty.all(Colors.white,),
                                  backgroundColor: WidgetStateProperty.all(Colors.red)
                                ),
                                  onPressed: (){}, child: const Text("Remove",style: TextStyle(fontSize: 10))),
                            ),
                     ],
                   ),
                    
                 ],
               ),
             )
           ],
         ),
       ),
    );
  }
}
