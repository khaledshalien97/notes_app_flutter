import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteData});

  final NoteModel noteData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNoteView(noteData: noteData,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(noteData.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title:  Text(
                 noteData.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(noteData.subTitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 16)),
                ),
                trailing: IconButton(
                    onPressed: () {
                      noteData.delete();
                      BlocProvider.of<GetNotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ))),
            Text(
             noteData.date.substring(0,16),
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
