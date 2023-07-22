import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

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
            child: Icon(icon, color: const Color(0xffbfc2df)),
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
