import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TwoHeader extends StatelessWidget {
  final String text_one;
  final String text_two;
  // ignore: non_constant_identifier_names
  const TwoHeader({super.key, required this.text_one, required this.text_two});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text_one,
          style: Styles.headStyle2,
        ),
        InkWell(
          onTap: () {
            print("view all printing");
          },
          child: Text(
            text_two,
            style: Styles.textStyle,
          ),
        )
      ],
    );
  }
}
