import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
      List <NoteModel>notes = BlocProvider.of<GetNotesCubit>(context).notes ??[];
      
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            
            itemCount:notes.length,
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return NoteItem(noteData: notes[index],);
              }),
        );
      },
    );
  }
}
