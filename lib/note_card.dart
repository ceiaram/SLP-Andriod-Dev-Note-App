import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: AppStyle.mainTitle,
          ),
          Text(
            doc["creation_date"],
            style: AppStyle.dateTitle,
          ),
          Text(
            doc["note_content"],
            style: AppStyle.mainContent,
          )
        ],
      ),
    ),
  );
}
// class AddNote extends StatefulWidget{
//   const AddNote({Key? key}) : super(key: key);
//
//   @override
//   _AddNoteState createState() => _AddNoteState();
// }
//
// class _AddNoteState extends State<AddNote>{
//   @override
//   Widget build(BuildContext context){
//       return Scaffold(
//       appBar: AppBar(
//     ),
//     );
//   }
// }
