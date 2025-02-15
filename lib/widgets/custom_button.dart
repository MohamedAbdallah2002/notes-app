
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepPurple,
      ),
      child: Center(child: Text("Add",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
}