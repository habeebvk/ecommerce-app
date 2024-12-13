import 'package:ecommerce/customer/cart.dart';
import 'package:ecommerce/customer/favourite.dart';
import 'package:ecommerce/customer/perfumes.dart';
import 'package:ecommerce/customer/profile.dart';
import 'package:flutter/material.dart';  

class MainScreen extends StatefulWidget {  
  const MainScreen({super.key});  

  @override  
  State<MainScreen> createState() => _MainScreenState();  
}  

class _MainScreenState extends State<MainScreen> {  
  // Initialize the current index  
  int myIndex = 0;  

  // List of widgets to display for each bottom navigation item  
  final List<Widget> _screens = [  
    const Perfumes(), 
    const FavouriteScreen(),
    const CartScreen(),  
    const profileScreen() 
  ];  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: _screens[myIndex], // Display the current screen content  
      bottomNavigationBar: BottomNavigationBar(  
        backgroundColor: Colors.redAccent,
        currentIndex: myIndex,  
        elevation: 10,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.amber,// Optional: Set unselected item color  
        onTap: (index) {  
          setState(() {  
            myIndex = index; // Update the selected index  
          });  
        },  
        items: const [  
          BottomNavigationBarItem(  
            label: "Perfumes",   
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff312882)
          ),  
          BottomNavigationBarItem(  
            label: "Favourite",   
            icon: Icon(Icons.favorite),
            backgroundColor: Color(0xff312882) 
          ),  
          BottomNavigationBarItem(  
            label: "Cart",   
            icon: Icon(Icons.shopping_cart),
            backgroundColor: Color(0xff312882) 
          ),  
          BottomNavigationBarItem(  
            label: "Profile",   
            icon: Icon(Icons.person_2_rounded),
            backgroundColor: Color(0xff312882)  
          )  
        ],  
      ),  
    );  
  }  
}