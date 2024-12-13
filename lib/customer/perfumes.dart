import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/controllers/homect.dart';
import 'package:ecommerce/customer/aboutus.dart';
import 'package:ecommerce/customer/cart.dart';
import 'package:ecommerce/customer/favourite.dart';
import 'package:ecommerce/customer/login.dart';
import 'package:ecommerce/customer/order_history.dart';
import 'package:ecommerce/customer/order_status.dart';
import 'package:ecommerce/customer/privacy_policy.dart';
import 'package:ecommerce/customer/widgets/appbar.dart';
import 'package:ecommerce/customer/widgets/categories.dart';  
import 'package:ecommerce/customer/widgets/content.dart';
import 'package:ecommerce/customer/widgets/drawer.dart'; 
import 'package:ecommerce/customer/widgets/head.dart';  
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';  

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);  

class Perfumes extends StatefulWidget {  
  const Perfumes({super.key});  

  @override  
  State<Perfumes> createState() => _PerfumesState();  
}  

class _PerfumesState extends State<Perfumes> { 
  String selectedOption = 'Sort By'; 
  @override  
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());  
    return Scaffold(  
      appBar: const IndexAppBar(
        name: "Home",
        ),  
      body: ValueListenableBuilder(  
        valueListenable: scrollNotifier,  
        builder: (BuildContext context, index, _) {  
          return NotificationListener<UserScrollNotification>(  
            onNotification: (notification) {  
              final ScrollDirection direction = notification.direction;  
              setState(() {  
                if (direction == ScrollDirection.reverse) {  
                  scrollNotifier.value = false;  
                } else if (direction == ScrollDirection.forward) {  
                  scrollNotifier.value = true;  
                }  
              });  
              return true;  
            },  
            child: SingleChildScrollView(  
              child: SizedBox(  
                width: MediaQuery.of(context).size.width,  
                child: Stack(  
                  children: [  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(  
                        children: [  
                           const SizedBox(height: 60),  
                           const headtext(name: "Categories"),  
                           const SizedBox(height: 10), 
                           CarouselSlider(  
                                options: CarouselOptions(  
                                  viewportFraction:1,  
                                  onPageChanged: (index,_) => controller.updatePageIndicator(index),
                                ),  
                                items: const [  
                                 Categories(image: 'assets/prf6.jpg',category: 'For Men',),
                                 Categories(category: 'For Women', image: 'assets/prf14.jpg'),
                                 Categories(category: 'For Women', image: 'assets/prf16.jpg'),
                                ],  
                              ),  
                           const SizedBox(height: 20),  
                           const headtext(name: "Collections"),  
                           const SizedBox(height: 10),  
                           const Padding(  
                            padding: EdgeInsets.only(left: 20),  
                            child: SingleChildScrollView(  
                              scrollDirection: Axis.horizontal,  
                              child: Row(  
                                children: [  
                                  Content(image: 'assets/oudh7.jpg', perfumename: 'Oudh Al Dabah', price: '400Rs'),  
                                  SizedBox(width: 20),  
                                  Content(image: 'assets/prf3.jpg', perfumename: 'Park Avenue', price: '350Rs'),  
                                  SizedBox(width: 20),  
                                  Content(image: 'assets/prf4.jpg', perfumename: 'Desolite', price: '500Rs'),
                                  SizedBox(width: 30,)  
                                ],  
                              ),  
                            ),  
                          ),  
                           const SizedBox(height: 20),  
                           const headtext(name: "BestSeller and Featured"),  
                           const SizedBox(height: 10),  
                           const Padding(  
                            padding: EdgeInsets.only(left: 20),  
                            child: SingleChildScrollView(  
                              scrollDirection: Axis.horizontal,  
                              child: Row(  
                                children: [  
                                  Content(image: 'assets/oudh7.jpg', perfumename: 'Oudh Al Dabah', price: '400Rs'),  
                                  SizedBox(width: 20),  
                                  Content(image: 'assets/prf3.jpg', perfumename: 'Park Avenue', price: '350Rs'),  
                                  SizedBox(width: 20),  
                                  Content(image: 'assets/prf4.jpg', perfumename: 'Desolite', price: '500Rs'),  
                                  SizedBox(width: 30), 
                                ],  
                              ),  
                            ),  
                          ),  
                           const SizedBox(height: 20),  
                        ],  
                      ),
                    ),  
                   scrollNotifier.value == true  
              ? Container(  
                  height: 70,  
                  color: Colors.amber,  
                  child: Row(  
                    mainAxisAlignment: MainAxisAlignment.end,  
                    children: [ 
                      SizedBox(
                        width: 240,
                        height: 40,
                        child: SearchAnchor(builder: (BuildContext context,SearchController searchcontroller){
                          return SearchBar(
                            controller: searchcontroller,
                            onTap:(){ searchcontroller.openView(); },
                            onChanged: (_){ searchcontroller.openView();},
                            trailing: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.search))
                            ],
                          );
                        }, suggestionsBuilder: (BuildContext context,SearchController searchcontroller){
                          return List.generate(5, (int index){
                            final String item = 'item $index';
                            Text(item);
                            OnTap:(){
                              setState(() {
                                searchcontroller.closeView(item);
                              });
                            };
                            throw "Exception Handled";
                          });
                        }),
                      ),
                      const SizedBox(width: 20,), 
                      DropdownButton<String>(  
                        value: selectedOption,  
                        dropdownColor: Colors.white,  
                        style: GoogleFonts.montserrat(),  
                        onChanged: (String? newValue) {  
                          setState(() {  
                            selectedOption = newValue!;  
                          });  
                        },  
                        items: <String>['Sort By', 'Name', 'Price']  
                            .map<DropdownMenuItem<String>>((String value) {  
                          return DropdownMenuItem<String>(  
                            value: value,  
                            child: Text(value,style: const TextStyle(color: Colors.black,fontSize: 15),),  
                          );  
                        }).toList(),    
                      ),  
                      const SizedBox(width: 10),  
                    ],  
                  ),  
                )  
              : const SizedBox(height: 10),  
                            ],  
                          ),  
                        ),  
                      ),  
                    );  
                  },  
                ),  
          drawer: Drawer(  
            child: ListView(    
              padding: EdgeInsets.zero,  
              children: [  
                DrawerHeader(  
                      decoration: const BoxDecoration(  
                        image: DecorationImage(image: AssetImage('assets/blast.jpeg'),fit: BoxFit.cover),  
                      ),  
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(  
                            radius: 50,
                            backgroundImage: AssetImage('assets/bohemian-man-with-his-arms-crossed.jpg'),  
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 40,),
                              Text("Amal Rohan",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w500),),
                              const SizedBox(height: 10,),
                              Text("+91 6455767454",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w500),),

                            ],
                          ),
                        ],
                      ),  
                    ),   
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Perfumes',),  
                  onTap: () {  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Perfumes())); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Cart'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Favourites'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteScreen())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Order Status'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StatusScreen())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Order History'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryScreen())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Privacy Policy'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'About Us '),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen())
                    ); 
                  },  
                ),  
                ListTile(  
                  tileColor: const Color(0xff312882) ,
                  title: const Drawtext(name: 'Logout'),
                  onTap: () {  
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())
                    ); 
                  },  
                ),  
              ],  
            ),  
          ),  
        );  
      }  
    }

