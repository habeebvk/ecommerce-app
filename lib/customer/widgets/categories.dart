import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  final String category;
  final String image;
  const Categories({
    super.key, required this.category, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(  
      width: MediaQuery.of(context).size.width / 1.2,  
      height: MediaQuery.of(context).size.height / 7,  
      decoration: BoxDecoration(  
        color: const Color(0xff4B0082),  
        borderRadius: BorderRadius.circular(20),  
      ),  
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [  
          Padding(  
            padding: const EdgeInsets.only(bottom: 80),  
            child: Text(  
              category,  
              style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),  
            ),  
          ),  
          // const SizedBox(width: 40),  
           Image(  
            image: AssetImage(image),  
            width: 120,  
            height: 120,  
          ),  
        ],  
      ),  
    );
  }
}

