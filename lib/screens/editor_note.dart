import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/shared/methods/navigation.dart';
import 'package:notes_app/styles/app_styles.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({super.key});

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  int colorId = Random().nextInt(AppStyle.cardColor.length);
  String date = DateTime.now().toString();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _mainContentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardColor[colorId],
      appBar: AppBar(
        backgroundColor: AppStyle.cardColor[colorId],
        elevation: 0,
        title: Text('Add New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Title',
              ),
              style: AppStyle.title1Bold,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              date,
              style: AppStyle.date,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _mainContentController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Write Your Note',
              ),
              style: AppStyle.content,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyle.blue2,
        onPressed: () async {
          FirebaseFirestore.instance
              .collection('Notes')
              .add(
                {
                  'note_title': _titleController.text,
                  'creation_date': date,
                  'note_content': _mainContentController.text,
                  'color_id': colorId,
                },
              )
              .then(
                (value) => {
                  Navigator.pop(context),
                },
              )
              .catchError(
                (error) => print('failed to add a new node due $error'),
              );
        },
        child: Icon(Icons.save_as_sharp),
      ),
    );
  }
}
