import 'package:ecommerce/auth/authservice.dart';
import 'package:ecommerce/controllers/homect.dart';
import 'package:ecommerce/customer/perfumes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';  
import 'dart:ui';  
import 'package:google_fonts/google_fonts.dart';  

class SignupScreen extends StatefulWidget {  
  const SignupScreen({super.key});  

  @override  
  State<SignupScreen> createState() => _SignupScreenState();  
}  

class _SignupScreenState extends State<SignupScreen> {  
  final controller = Get.put(HomeController());
  final _auth = FirebaseAuthServices();

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        foregroundColor: Colors.white,  
        backgroundColor: const Color(0xff312882),  
      ),  
      body: SingleChildScrollView(  
        child: Stack(  
          children: [  
              SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Image(image: AssetImage('assets/oudh.jpg'), fit: BoxFit.cover)),  
            Padding(  
              padding: const EdgeInsets.only(top: 100),  
              child: Center(
                child: Container(  
                  width: MediaQuery.of(context).size.width / 1.5,  
                  height: MediaQuery.of(context).size.height / 1.7,  
                  decoration: BoxDecoration(  
                    color: Colors.white.withOpacity(0.2), // Adjust opacity here  
                    borderRadius: BorderRadius.circular(30),  
                  ),  
                  child: ClipRRect(  
                    borderRadius: BorderRadius.circular(30),  
                    child: BackdropFilter(  
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust blur amount here  
                      child: Container(  
                        decoration: BoxDecoration(  
                          color: Colors.red.withOpacity(0), // Fully transparent  
                        ),  
                        child: Form(
                          key:controller.signupFormKey,
                          child: Column(  
                            crossAxisAlignment: CrossAxisAlignment.center,  
                            mainAxisAlignment: MainAxisAlignment.center,  
                            children: [  
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(  
                                  "Registration",  
                                  style: GoogleFonts.montserrat(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),  
                                ),
                              ),  
                              const SizedBox(height: 50,),
                              Padding(  
                                padding: const EdgeInsets.only(left: 20, right: 20),  
                                child: TextFormField( 
                                  controller: controller.usernameController,
                                  validator: (value){
                                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                                      return "Enter correct name";
                                    }else{
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(  
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    filled: true, // Enable filling  
                                    fillColor: Colors.white, // Set background color to white  
                                    hintText: "Enter Username",  
                                    border: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: BorderSide.none, // Optional: remove the border  
                                    ),  
                                    // Optionally, you can also customize the focusedBorder  
                                    focusedBorder: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: const BorderSide(color: Colors.black), // Change to your desired focus color  
                                    ),  
                                  ),  
                                ),  
                              ),  
                              const SizedBox(height: 20),
                                Padding(  
                                padding: const EdgeInsets.only(left: 20, right: 20),  
                                child: TextFormField(  
                                  controller: controller.emailController,
                                  validator: (value){
                                    if (value!.isEmpty || !RegExp(r'^[\w\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
                                      return "Enter valid Email";
                                    }else{
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(  
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    filled: true, // Enable filling  
                                    fillColor: Colors.white, // Set background color to white  
                                    hintText: "Enter Email",  
                                    border: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: BorderSide.none, // Optional: remove the border  
                                    ),  
                                    // Optionally, you can also customize the focusedBorder  
                                    focusedBorder: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: const BorderSide(color: Colors.black), // Change to your desired focus color  
                                    ),  
                                  ),  
                                ),  
                              ),  
                              const SizedBox(height: 20,),
                              Padding(  
                                padding: const EdgeInsets.only(left: 20, right: 20),  
                                child: TextFormField(  
                                  controller:controller.passwordController,
                                  validator: (value){
                                    if (value!.isEmpty || value == null ) {
                                      return "Password field can't be empty";
                                    }else{
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(  
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    filled: true, // Enable filling  
                                    fillColor: Colors.white, // Set background color to white  
                                    hintText: "Enter Password",  
                                    border: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: BorderSide.none, // Optional: remove the border  
                                    ),  
                                    // Optionally, you can also customize the focusedBorder  
                                    focusedBorder: OutlineInputBorder(  
                                      borderRadius: BorderRadius.circular(30),  
                                      borderSide: const BorderSide(color: Colors.black), // Change to your desired focus color  
                                    ),  
                                  ),  
                                ),  
                              ),  
                              const SizedBox(height: 30,),
                              SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff312882)
                                  ),
                                    onPressed: signup, child: Text("Submit",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white),)),
                              ),
                              const SizedBox(height: 10,),
                              Center(
                                child: TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("Already have an account! Click here to login",style: GoogleFonts.montserrat(color: Colors.black),)),
                              )
                            ],  
                          ),
                        ),  
                      ),  
                    ),  
                  ),  
                ),
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }
  signup()async{
    if (controller.signupFormKey.currentState!.validate()) {
        final user = await _auth.createUserWithEmailAndPassword(controller.emailController.text,controller.passwordController.text);
    if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User created successfully")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Perfumes()));
      }  
    }
  }  
}