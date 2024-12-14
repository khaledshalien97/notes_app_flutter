import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
 List<NoteModel>? notes;
  fetchAllNotes() async {
   
      var noteBox = Hive.box<NoteModel>(kNotesBox);

    notes = noteBox.values.toList();
   
  }
 
}
