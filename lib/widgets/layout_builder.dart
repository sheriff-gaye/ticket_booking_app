import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class DottedLines extends StatelessWidget {
  final bool? isColor;
  final int section;
  const DottedLines({super.key, this.isColor, required this.section});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / section).floor(),
              (index) => SizedBox(
                    height: AppLayout.getHeight(1),
                    width: AppLayout.getWidth(5),
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: isColor == null ? Colors.white : Colors.grey.shade400)),
                  )),
        );
      },
    );
  }
}
