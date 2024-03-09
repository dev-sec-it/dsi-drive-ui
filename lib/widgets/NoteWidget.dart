// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hello_devsecit/hello_devsecit.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key, required this.text, required this.title});
  final String text, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3(text: title),
          SizedBox(height: 5),
          Paragraph(text: text.toString()),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Last edit 9:00 am",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
