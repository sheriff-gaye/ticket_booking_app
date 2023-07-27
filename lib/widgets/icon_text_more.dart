import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextMore extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgColor;
  final Color iconColor;
  const IconTextMore(
      {super.key, required this.icon, required this.text, required this.bgColor, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: bgColor,
            radius: 25,
            child: Icon(icon, color: iconColor),
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
    );
  }
}
