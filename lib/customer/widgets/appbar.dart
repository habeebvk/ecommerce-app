import 'package:flutter/material.dart';  
import 'package:google_fonts/google_fonts.dart';  

class IndexAppBar extends StatefulWidget implements PreferredSizeWidget {  
  final String name;  
  const IndexAppBar({  
    super.key,  
    required this.name,  
  });  

  @override  
  Size get preferredSize => const Size.fromHeight(56.0);  

  @override  
  _IndexAppBarState createState() => _IndexAppBarState();  
}  

class _IndexAppBarState extends State<IndexAppBar> {  
  String selectedOption = 'Sort By';  

  @override  
  Widget build(BuildContext context) {  
    return AppBar(  
      foregroundColor: Colors.white,  
      backgroundColor: const Color(0xff312882),  
      title: Text(  
        widget.name,  
        style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),  
      ),  
      actions: [  
        DropdownButton<String>(  
          value: selectedOption,  
          dropdownColor: const Color(0xff312882),  
          style: GoogleFonts.montserrat(color: Colors.white),  
          onChanged: (String? newValue) {  
            setState(() {  
              selectedOption = newValue!;  
            });  
          },  
          items: <String>['Sort By', 'Name', 'Price']  
              .map<DropdownMenuItem<String>>((String value) {  
            return DropdownMenuItem<String>(  
              value: value,  
              child: Text(value),  
            );  
          }).toList(),  
        ),  
        const SizedBox(width: 16.0),  
      ],  
    );  
  }  
}