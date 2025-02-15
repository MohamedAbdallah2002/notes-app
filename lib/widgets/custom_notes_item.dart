import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orange,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: Text(
              "Build your career with mohamed abdallah",
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 20,
              ),
            ),
            trailing: Icon(
              Icons.delete,
              color: Colors.black,
              size: 32,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "May 2,2002",
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
