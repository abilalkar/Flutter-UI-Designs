import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(NotebookApp());
}

class NotebookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotesListPage(),
    );
  }
}

class NotesListPage extends StatefulWidget {
  @override
  _NotesListPageState createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notebook'),
      ),
      body: StreamBuilder(
        //stream: Firestore.instance.collection('notes').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            // itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              //DocumentSnapshot document = snapshot.data.documents[index];
              return ListTile(
                // title: Text(document['title']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NoteDetailPage(
                          //document: document,
                          ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteDetailPage(),
            ),
          );
        },
      ),
    );
  }

  NoteDetailPage() {}
}
