 import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color:color?? kColorSheet),
      );
  }