import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/bottom_bar.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/column_layout.dart';
import 'package:my_app/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(65)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(image: AssetImage("assets/images/avatar3.jpg"))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sheriff Gay",
                    style: Styles.headStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: Styles.textStyle
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)), color: const Color(0xfffef4f3)),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff526799)),
                          child: const Icon(
                            Icons.shield_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          "Premium Status",
                          style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600, color: const Color(0xff526799)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("edit button clicked");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor, borderRadius: BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lightbulb),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've have got a new award",
                          style: Styles.headStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You have 95 Flights in a year",
                          style: Styles.headStyle2.copyWith(
                            color: Colors.white.withOpacity(.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated Miles",
            style: Styles.headStyle2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            child: Column(children: [
              Gap(AppLayout.getHeight(20)),
              Text(
                "912802",
                style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 45),
              ),
              Gap(AppLayout.getHeight(25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Miles Accured",
                    style: Styles.textStyle.copyWith(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    "11th May 2023",
                    style: Styles.textStyle.copyWith(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              Gap(AppLayout.getHeight(5)),
              Divider(
                color: Colors.grey.shade300,
              ),
              Gap(AppLayout.getHeight(5)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "23 042", secondText: "Miles", alignmnet: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "Airline CO", secondText: "Received from", alignmnet: CrossAxisAlignment.end)
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const DottedLines(
                section: 12,
                isColor: false,
              ),
              Gap(AppLayout.getHeight(12)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "24", secondText: "Miles", alignmnet: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "McDonald's", secondText: "Received from", alignmnet: CrossAxisAlignment.end)
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const DottedLines(
                section: 12,
                isColor: false,
              ),
              Gap(AppLayout.getHeight(12)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "52 340", secondText: "Miles", alignmnet: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "Exuma", secondText: "Received from", alignmnet: CrossAxisAlignment.end)
                ],
              ),
            ]),
          ),
          Gap(AppLayout.getHeight(40)),
          Center(
            child: Text(
              "How to get more mile",
              style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BotttomBar()),
              );
              // Your button action here
            },
            child: const Text(
              "HOME",
              style: TextStyle(color: Color.fromARGB(255, 223, 80, 55), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
