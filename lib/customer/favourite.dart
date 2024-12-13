import 'package:ecommerce/customer/widgets/appbar.dart';
import 'package:ecommerce/customer/widgets/fav.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  IndexAppBar(
          name: "Favourites",
        ),
        body: Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(height: 50,),
                favourite(image: 'assets/prf9.jpg', perfumeName: 'CODE Perfumes',price: "450Rs",),
                SizedBox(height: 30,),
                favourite(image: 'assets/prf8.jpg', perfumeName: 'Desko Perfumes', price: '300Rs')
              ],
            ),
          ),
        ),
    );
  }
}


