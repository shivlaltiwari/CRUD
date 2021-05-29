import 'package:crudapp/Service/Note_service.dart';
import 'package:crudapp/views/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
void setupLocator(){
  GetIt.I.registerLazySingletonAsync(() => NotesService());

}
void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "CRUD Operation using API",
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
  );
}