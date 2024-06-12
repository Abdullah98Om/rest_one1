import 'dart:convert';

import 'package:flutter/cupertino.dart';

Image memoryImage(String img) {
  return Image.memory(
    base64Decode(img),
    fit: BoxFit.fitWidth,
  );
}
