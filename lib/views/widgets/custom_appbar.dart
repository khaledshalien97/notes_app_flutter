import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
final String title;
final IconData icon;


CustomAppBar({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Row(
   
      children: [
        Text(
         title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon,),

      ],
    );
  }
}

