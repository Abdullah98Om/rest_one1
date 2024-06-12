import 'package:flutter/material.dart';
import 'package:rest_one/utility/constant.dart';

Widget loader(){
  return Center(child: CircularProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(primary_color)));
}
