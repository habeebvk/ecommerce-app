import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_quantity/input_quantity.dart';

class CartWidget extends StatefulWidget {
  
  final String name;
  final String perfumeName;
  final String price;
  const CartWidget({
    super.key, required this.name, required this.perfumeName, required this.price,
  });

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  String selectedOption = '3ml'; 
  @override
  Widget build(BuildContext context) {
    return Container(   
       width: MediaQuery.of(context).size.width* 3,  
       height: MediaQuery.of(context).size.height * 0.25, 
     decoration: BoxDecoration(  
       color: const Color(0xff006699),  
       borderRadius: BorderRadius.circular(20),  
     ), 
     child: Row(
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Image(image: AssetImage(widget.name),width: 100),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
              SizedBox(height: 20,),
               Text(widget.perfumeName,style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white),),
               Padding(
                 padding: const EdgeInsets.only(right: 40),
                 child: Text(widget.price,style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white),),
               ),
                DropdownButton<String>(  
                    value: selectedOption,  
                      dropdownColor: const Color(0xff312882),  
                      style: GoogleFonts.montserrat(color: Colors.white),  
                      onChanged: (String? newValue) {  
                        setState(() {  
                          selectedOption = newValue!;  
                        });  
                      },  
                      items: <String>['3ml', '6ml', '12ml','24ml']  
                          .map<DropdownMenuItem<String>>((String value) {  
                        return DropdownMenuItem<String>(  
                          value: value,  
                          child: Text(value),  
                        );  
                      }).toList(),  
                    ),  
               const InputQty(minVal: 0,),
               const SizedBox(height: 5,),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   minimumSize: const Size(80, 30), // Set the minimum size of the button  
                    padding: EdgeInsets.zero, 
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                   ),
                   backgroundColor: Colors.red,
                   foregroundColor: Colors.white
                 ),
                 onPressed: (){}, child: const Text("Remove",style: TextStyle(fontSize: 13),)),
             ],
           ),
         )
       ],
     ),
        );
  }
}