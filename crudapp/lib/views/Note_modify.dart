import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteID;
  bool get isEditing => noteID != null;
  NoteModify({this.noteID});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ?"Edit Note":"Create note page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Note Title",
                          contentPadding: EdgeInsets.all(4.0),
                        ),
                      ),
                      Container(
                        height: 8,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Note Content",
                          contentPadding: EdgeInsets.all(4.0),
                        ),
                      ),
                      Container(height: 16.0,),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.blue,
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white,fontSize: 20.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
