import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profiletext extends StatelessWidget {
  const profiletext({
    super.key, required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500),);
  }
}