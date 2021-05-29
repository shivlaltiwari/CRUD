import 'package:crudapp/models/Notelist_model.dart';

class NotesService {
  List<NoteForlisting> getNoteLIst() {
    return Note = [
      new NoteForlisting(
        noteID: '1',
        createDateTime: DateTime.now(),
        lastDateTime: DateTime.now(),
        noteTitle: 'Note 1',
      ),
      new NoteForlisting(
        noteID: '2',
        createDateTime: DateTime.now(),
        lastDateTime: DateTime.now(),
        noteTitle: 'Note 2',
      ),
      new NoteForlisting(
        noteID: '3',
        createDateTime: DateTime.now(),
        lastDateTime: DateTime.now(),
        noteTitle: 'Note 3',
      ),
    ];
  }
}


