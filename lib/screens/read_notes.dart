import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_styles.dart';

// ignore: must_be_immutable
class ReadNoteScreen extends StatefulWidget {
  ReadNoteScreen(
    this.doc, {
    super.key,
  });
  QueryDocumentSnapshot doc;
  

  @override
  State<ReadNoteScreen> createState() => _ReadNoteScreenState();
}

class _ReadNoteScreenState extends State<ReadNoteScreen> {
  @override
  Widget build(BuildContext context) {
    int colorId = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardColor[colorId],
      appBar: AppBar(
        backgroundColor: AppStyle.cardColor[colorId],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc['note_title'],
              style: AppStyle.title1Bold,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.doc['creation_date'],
              style: AppStyle.date,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.doc['note_content'],
              style: AppStyle.content,
              // overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
