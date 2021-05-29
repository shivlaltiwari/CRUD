
import 'package:flutter/material.dart';

class NoteDelet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Waring"),
      content: Text("Are you sure you want to delet this note?"),
      actions: [
        FlatButton(onPressed: (){
          Navigator.of(context).pop(true);
        }, 
        child: Text("Yes"),
        ),
        FlatButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, 
        child: Text("No"),
        ),
      ],
      
    );
  }
}