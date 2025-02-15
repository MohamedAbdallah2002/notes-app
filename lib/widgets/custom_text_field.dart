
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxlines=1});
final String hint;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: Colors.deepPurple ,
      decoration: InputDecoration(
        
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(),
      ),
    );
  }

 
}