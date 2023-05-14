import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';

class HostelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HostelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)],
          borderRadius: BorderRadius.circular(24)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppLayout.getHeight(180),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/images/${hotel['image']}"))),
        ),
        const Gap(10),
        Text(
          "${hotel['destination']}",
          style: Styles.headStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(5),
        Text(
          "${hotel['place']}",
          style: Styles.headStyle2.copyWith(color: Colors.white),
        ),
        const Gap(10),
        Text(
          "\$${hotel['price']}/night",
          style: Styles.headStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
