import 'package:dmsn/database/notes_db.dart';
import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  
  NotesDB? notesDB;
  @override
  void initState() {
    super.initState();
    notesDB = NotesDB();
  }
  
  @override
  Widget build(BuildContext context) {

    final conTitle = TextEditingController();
    final conContent = TextEditingController();

    final txtTitle = TextFormField(
      controller: conTitle,
    );
    final txtContent = TextFormField(
      maxLines: 8,
      controller: conContent,
    );
    final space = SizedBox(height: 5,);
    final btnSave = ElevatedButton(
      onPressed: (){
        notesDB!.INSERT({
          "title" : conTitle.text,
          "content": conContent.text,
          "dateNote": "2026-09-25"
        }).then((value) {
          if(value>0){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Se guardo el registro correctamente'),
                duration: Duration(seconds: 3),
              ),
            );
            Navigator.pop(context);
          }
        },);
      }, 
      child: Text('Save Note')
    );

    return Scaffold(
      appBar: AppBar(title: Text('Insertar Nota'),),
      body: Column(
        children: [
          txtTitle,
          space,
          txtContent,
          space,
          btnSave
        ],
      ),
    );
  }
}