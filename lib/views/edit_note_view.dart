import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteData});
final NoteModel noteData; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(noteData: noteData,),
    );
  }
}