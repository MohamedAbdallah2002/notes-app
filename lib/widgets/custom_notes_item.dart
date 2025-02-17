import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    note.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                subtitle: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 32,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
