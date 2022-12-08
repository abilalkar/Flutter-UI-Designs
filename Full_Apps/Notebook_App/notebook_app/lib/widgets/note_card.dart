// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notebook_app/style/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(
        8.0,
      ),
      margin: EdgeInsets.all(
        8.0,
      ),
      decoration: BoxDecoration(
        color: AppStyle.cardColors[doc['color_id']],
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: AppStyle.mainTitle,
          ),
          Text(
            doc["creation date"],
            style: AppStyle.dataTitle,
          ),
        ],
      ),
    ),
  );
}
