import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constants/colors.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24,),
            CustomTextField(hintText: "Title",),
            const SizedBox(height: 16,),
            CustomTextField(hintText: "Content",maxLine: 5,),
             const SizedBox(height: 64,),
            const CustomBotton(),
            const SizedBox(height: 16,),
             
          ],
        ),
      ),
    );
  }
}


