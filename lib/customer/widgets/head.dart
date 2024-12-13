import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class headtext extends StatelessWidget {
  final dynamic name;

  const headtext({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left:30,top: 30),
        child: Text(name,style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
      ));
  }
}