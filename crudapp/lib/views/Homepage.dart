//import 'package:crudapp/models/Notelist_model.dart';
import 'package:crudapp/Service/Note_service.dart';
import 'package:crudapp/views/Note_modify.dart';
import 'package:crudapp/views/note_Delet.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
NotesService get service =>   GetIt.instance<NotesService>();

class Homepage extends StatelessWidget {
  String formateDateTime(DateTime dateTime) {
    return "${dateTime.day}/ ${dateTime.month}/${dateTime.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notelist Item"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NoteModify()));
        },
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          return Dismissible(
            key: ValueKey(
              Note[index].noteID,
            ),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                  context: context, builder: (__) => NoteDelet());
              return result;
            },
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.all(8.0),
              child: Align(
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            child: ListTile(
              title: Text(
                Note[index].noteTitle,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  " Last edited date on ${formateDateTime(Note[index].lastDateTime)}"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NoteModify(
                          noteID: Note[index].noteID,
                        )));
              },
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(
          height: 2.0,
          thickness: 2.0,
          color: Colors.black87,
        ),
        itemCount: Note.length,
      ),
    );
  }
}
