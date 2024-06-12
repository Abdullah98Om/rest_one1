import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Color primary_color = Color(0xff900f13);

String convertDate(Timestamp timestamp) {
  DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(timestamp.seconds * 1000);
  String date =
      "${dateTime.year} - ${dateTime.month} - ${dateTime.day}  ${dateTime.hour}:${dateTime.minute}";

  return date;
}
