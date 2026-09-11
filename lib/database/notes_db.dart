import 'dart:io';
import 'package:sqflite/sqflite.dart';

class NotesDB {
  
  final nameDB = "NOTESDB";
  final versionDB = 1;
  Database? _database;
  static Database? get database {
    if( _database != null ) return _database;
    return _database = _initDatabase();
  }

  Database _initDatabase(){
    Directory  folder 
  }

}