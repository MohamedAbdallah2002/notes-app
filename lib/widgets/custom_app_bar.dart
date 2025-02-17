import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomAppBarIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
