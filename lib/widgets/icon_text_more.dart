import 'package:flutter/material.dart';
import 'package:my_app/screens/more_screens/contact_us.dart';
import 'package:my_app/screens/login.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextMore extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgColor;
  final Color iconColor;
  final Widget route; // Add a parameter for the route

  const IconTextMore({
    Key? key,
    required this.icon,
    required this.text,
    required this.bgColor,
    required this.iconColor,
    required this.route, // Add the route parameter to the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route), // Use the route parameter here
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: bgColor,
              radius: 25,
              child: Icon(icon, color: iconColor), // "colour" should be "color"
            ),
          ),
          SizedBox(width: AppLayout.getWidth(10)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
