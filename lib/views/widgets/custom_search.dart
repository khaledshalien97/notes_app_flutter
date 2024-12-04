import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData? icon;

  CustomSearchIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2),
      
      borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Icon(icon,size: 28,),),
    );
  }
}