import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawtext extends StatelessWidget {
  final String name;
  const Drawtext({
    super.key, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(name,style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white),),
    );
  }
}