import 'package:ecommerce/customer/login.dart';
import 'package:flutter/material.dart';  
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';  

void main() => runApp(MyApp());  

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override  
  Widget build(BuildContext context) {  
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Splash Screen Example',  
          home: SplashScreen(),  
    );  
  }  
}  

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override  
  _SplashScreenState createState() => _SplashScreenState();  
}  

class _SplashScreenState extends State<SplashScreen> {  
  @override  
  void initState() {  
    super.initState();  
    // Navigate to HomeScreen after 3 seconds  
    Timer(const Duration(seconds: 3), () {  
      Navigator.of(context).pushReplacement(  
        MaterialPageRoute(builder: (context) => HomeScreen()),  
      );  
    });  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      backgroundColor: Colors.white, // Background color of the splash screen  
      body: Center(  
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,  
            children: <Widget>[  
              // Add your image here  
              Image.asset(  
                'assets/christmas_2012_new_6457.jpg',  
                width: 250, // Adjust width as necessary  
              ),   
              Text(  
                'Aerofit',  
                style: GoogleFonts.montserrat(fontSize: 50,fontWeight: FontWeight.bold),  
              ),  
              const SizedBox(height: 100,),
              Text('v1.2.4',style: GoogleFonts.montserrat(fontSize: 12,color: Colors.grey),)
            ],  
          ),
        ),  
      ),  
    );  
  }  
}  

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Image(image: AssetImage('assets/oudh.jpg'), fit: BoxFit.cover)),  
            Padding(
              padding: const EdgeInsets.only(left: 50,top:140),
              child: Text("Aerofit",style: GoogleFonts.nunito(fontSize: 25,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:50,right: 50,top: 200),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: GoogleFonts.poppins(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 680),
              child: Center(
                child: SizedBox(
                  width: 320,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    }, child: Text("Get Started",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black),)),
                ),
              ),
            )
          ],
        ),
      ) 
    );  
  }  
}