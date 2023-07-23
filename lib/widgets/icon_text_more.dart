import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextMore extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextMore({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 175, 226, 246),
              radius: 25,
              child: Icon(icon, color: const Color.fromARGB(255, 14, 97, 180)),
            ),
          ),
          SizedBox(width: AppLayout.getWidth(10)), // You can replace Gap with SizedBox
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: text,
                hintStyle: Styles.textStyle, // Styles.textStyle should be a valid TextStyle
              ),
            ),
          ),
        ],
      ),
    );
  }
}
