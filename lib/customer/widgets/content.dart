import 'package:ecommerce/customer/content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  final String image;
  final String perfumename;
  final String price;
  const Content({
    super.key, required this.image, required this.perfumename, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ContentScreen()));
      },
      child: Container(  
        width: MediaQuery.of(context).size.width / 3.3,  
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(  
          color: Colors.black,  
          borderRadius: BorderRadius.circular(20),  
        ),  
        child: Column(  
          children: [  
            const SizedBox(height: 10),  
            Image(  
              image: AssetImage(image),  
              width: 100,  
              height: 130,  
            ),  
            Align(  
              alignment: Alignment.topLeft,  
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(  
                  perfumename,  
                  style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white),  
                ),
              ),  
            ),   
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(  
                  price,  
                  style: GoogleFonts.montserrat(fontSize: 13, color: Colors.white),  
                ),
              ),
            )  
          ],  
        ),  
      ),
    );
  }
}