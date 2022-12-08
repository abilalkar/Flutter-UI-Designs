// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notebook_app/style/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {super.key});
  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int colorId = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardColors[colorId],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppStyle.cardColors[colorId],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.doc["note_title"],
            style: AppStyle.mainTitle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            widget.doc["creation_date"],
            style: AppStyle.dataTitle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            widget.doc["note_content"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
