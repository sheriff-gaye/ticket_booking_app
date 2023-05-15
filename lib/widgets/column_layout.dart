import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignmnet;
  const ColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignmnet});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignmnet,
      children: [
        Text(
          firstText,
          style: Styles.headStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: Styles.headStyle4,
        )
      ],
    );
  }
}
