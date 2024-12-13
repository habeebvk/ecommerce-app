import 'package:ecommerce/customer/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IndexAppBar(name: "Privacy Policy"),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text('Data We Collect From Visitors',style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Text('The privacy of our website visitors is important to us, so we do not track any individual people. As a visitor to our website:',style: GoogleFonts.montserrat(fontSize: 15),),
                Text('No personal information is stored',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('No information is shared with, sent to or sold to third-parties',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('No information is shared with advertising companies',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('No information is mined and harvested for personal and behavioral trends',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('No information is monetized',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('You can view the data we collect on our statistics page.',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('We run a self-hosted installation of Umami to collect some anonymous usage data for statistical purposes. The goal is to track overall trends in our website traffic, it is not to track individual visitors. All the data is in aggregate only, and no personal data is stored.',style: GoogleFonts.montserrat(fontSize: 15)),
                Text('The only data which is collected is data sent in a standard web request, which includes referral sources, the page you are visiting, your user agent, your IP address, and your screen resolution. The raw data is immediately discarded after statistics have been generated, for example if we collect your screen resolution as 1125x2436, the only data we retain is mobile device and not your specific resolution.',style: GoogleFonts.montserrat(fontSize: 15)),    
                const SizedBox(height: 20,),
                Text('Data We Collect From Visitors',style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Text('If you register for an account on one of our services, we may collect any information you provide us (such as your email, password, profile information, etc.) and use that information to provide you with the service. We never share or sell this data.',style: GoogleFonts.montserrat(fontSize: 15))
              ],
            ),
          ),
        )
      ),
    );
  }
}