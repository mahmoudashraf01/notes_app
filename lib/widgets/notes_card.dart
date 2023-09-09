import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_styles.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.cardColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc['note_title'],
            style: AppStyle.title1Bold,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            doc['creation_date'],
            style: AppStyle.date,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            doc['note_content'],
            style: AppStyle.content,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
