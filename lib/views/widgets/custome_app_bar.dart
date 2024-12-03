import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_search.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
   
      children: [
        Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomeSearchIcon(),

      ],
    );
  }
}


