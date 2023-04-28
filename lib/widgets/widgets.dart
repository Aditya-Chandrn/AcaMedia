import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
  focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
  errorBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
);

void nextPage(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextPageReplace(context, page) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
}
