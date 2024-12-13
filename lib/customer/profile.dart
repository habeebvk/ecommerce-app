import 'package:ecommerce/customer/widgets/appbar.dart';
import 'package:ecommerce/customer/widgets/dettext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IndexAppBar(name: "Profile"),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            Image(image:AssetImage('assets/bohemian-man-with-his-arms-crossed.jpg') ),
            const SizedBox(height: 70,),
            profiletext(name: 'Amal Rohan',),
            const SizedBox(height: 5,),
            profiletext(name: 'Amal23@gmail.com'),
            const SizedBox(height: 5,),
            profiletext(name: '+91 3456532098'),
            const SizedBox(height: 5,),
            profiletext(name: "Kozhikode")
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade500,
    );
  }
}

