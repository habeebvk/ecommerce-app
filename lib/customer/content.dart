import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  Color _iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      foregroundColor: Colors.white,  
      backgroundColor: const Color(0xff312882),  
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:  EdgeInsets.only(left:100),
              child: Image(image: AssetImage('assets/oudh8.jpg'),width: 300,height: 300,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/1.6,
              decoration: BoxDecoration(
                color: Color(0xff264d73),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40,top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Roja Perfumes",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(right:30),
                          child:  GestureDetector(  
                                  onTap: () {  
                                    setState(() {  
                                      _iconColor = (_iconColor == Colors.white) ? Colors.red : Colors.white;  
                                    });  
                                  },  
                                  child: Icon(  
                                    Icons.favorite,  
                                    color: _iconColor,  
                                    size: 40,  
                                  ),  
                                ),  
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text("Category : Men",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Price : Rs450",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Status : Available",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    ReadMoreText(
                          'One of the most ellegant and good fragrant perfume mixed with roja and other components from various flowers.Its scent is musked with jasmine flowers and oudh bark from Saudia Arabia.Its scent is known for its power and thickness ',style: GoogleFonts.montserrat(color: Colors.white),
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimCollapsedText: 'Read more',
                          trimExpandedText: 'Read less',
                          lessStyle: GoogleFonts.montserrat(color: Colors.white),
                          moreStyle: GoogleFonts.montserrat(color: Colors.white),
                      ),
                      const SizedBox(height: 40,),
                      Center(
                        child: SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/18,
                        child: ElevatedButton(
                        onPressed: (){},
                        child: Text("Add to Cart",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black),)),
                        ),
                      ),
                  ],  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}