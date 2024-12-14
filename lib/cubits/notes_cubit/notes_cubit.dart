import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


   fetchAllNotes(NoteModel note) async {

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
  
     
          emit(NotesSuccess(noteBox.values.toList()));
    } catch (e) {
     emit( NotesFailer(e.toString()));
    }
  }
}
