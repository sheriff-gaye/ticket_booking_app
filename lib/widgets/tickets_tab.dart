import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketsTab extends StatelessWidget {
  final String left;
  final String right;

  // ignore: non_constant_identifier_names
  const TicketsTab({super.key, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(AppLayout.getHeight(50)), color: const Color(0xfff4f6fd)),
        padding: const EdgeInsets.all(3.5),
        child: Row(children: [
          GestureDetector(
            onTap: () {
              print("hello world");
            },
            child: Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(left)),
            ),
          ),
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                color: const Color(0xfff4f6fd)),
            child: Center(child: Text(right)),
          ),
        ]),
      ),
    );
  }
}
