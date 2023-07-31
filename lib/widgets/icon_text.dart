import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final text;
  const IconText({super.key, required this.icon, required this.text, required String selectedValue});

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
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
