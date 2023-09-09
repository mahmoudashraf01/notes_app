import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/screens/editor_note.dart';
import 'package:notes_app/screens/read_notes.dart';
import 'package:notes_app/shared/methods/navigation.dart';
import 'package:notes_app/styles/app_styles.dart';
import 'package:notes_app/widgets/notes_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.darkBlue,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Write Notes',
          style: AppStyle.title1Bold,
        ),
        centerTitle: true,
        backgroundColor: AppStyle.darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Recent Notes',
              style: AppStyle.h5Bold,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('Notes').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: snapshot.data!.docs
                          .map(
                            (note) => noteCard(
                              () {
                                goTo(
                                  context: context,
                                  screen: ReadNoteScreen(note),
                                );
                              },
                              note,
                            ),
                          )
                          .toList(),
                    );
                  }
                  return Text(
                    'There is no notes',
                    style: AppStyle.bodyBold,
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: FloatingActionButton.extended(
          onPressed: () {
            goTo(
              context: context,
              screen: NoteEditor(),
            );
          },
          label: Text(
            'Add Note',
            style: AppStyle.content.merge(
              TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
