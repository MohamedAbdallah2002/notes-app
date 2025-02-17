import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({
    super.key,
    required this.icon, this.onPressed,
  });
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: 0.05),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
