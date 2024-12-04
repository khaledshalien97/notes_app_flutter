import 'package:flutter/material.dart';
import 'package:notes_app/constants/colors.dart';

class CustomTextField extends StatelessWidget {

  final String? hintText;
  final int? maxLine;

   CustomTextField({ this.hintText,  this.maxLine=1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        
        hintText: hintText,
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kprimaryColor)
         ),
          enabledBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white)),
          
          ),
    );
  }
}
