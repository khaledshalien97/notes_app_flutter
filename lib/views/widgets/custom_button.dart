import 'package:flutter/material.dart';
import 'package:notes_app/constants/colors.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: kprimaryColor),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),),
    );
  }
}