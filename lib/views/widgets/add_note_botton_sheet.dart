import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
          BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
         
            if(state is AddNoteSuccess){
              BlocProvider.of<GetNotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
        
            if(state is AddNoteFailer){
           
            }
               
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ?true:false,
              child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
