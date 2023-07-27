import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/column_layout.dart';
import 'package:my_app/widgets/layout_builder.dart';

import '../api/logout.dart';
import '../widgets/icon_text_more.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    "sheriffgaye5@gmail.com",
                    style: Styles.textStyle
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color.fromARGB(255, 223, 80, 55)),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 16, 77, 219)),
                          child: const Icon(
                            Icons.shield_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          "premium status",
                          style:
                              Styles.textStyle.copyWith(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),
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
          Gap(AppLayout.getHeight(3)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(70),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.secondColor, borderRadius: BorderRadius.circular(AppLayout.getHeight(15))),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(13), horizontal: AppLayout.getHeight(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lightbulb),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've have got a new award",
                          style: Styles.headStyle3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You have 95 Flights in a year",
                          style: Styles.headStyle4.copyWith(
                            color: Colors.white.withOpacity(.9),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(15)),
          const Column(children: [
            IconTextMore(
              icon: Icons.payment,
              text: "Payment Methods",
              bgColor: Color.fromARGB(255, 129, 192, 130),
              iconColor: Colors.white,
            ),
            IconTextMore(
              icon: Icons.confirmation_num,
              text: "Settings",
              bgColor: Color.fromARGB(255, 186, 9, 9),
              iconColor: Colors.white,
            ),
          ]),
          Gap(AppLayout.getHeight(10)),
          Center(
            child: Text(
              "Accumulated Miles",
              style: Styles.headStyle2,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            child: Column(children: [
              Gap(AppLayout.getHeight(10)),
              Text(
                "912802",
                style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              Gap(AppLayout.getHeight(15)),
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
          Gap(AppLayout.getHeight(10)),
          Center(
            child: Text(
              "How to get more mile",
              style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          ElevatedButton(
            onPressed: () {
              logoutUser();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginApp()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 223, 80, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            child: const Text(
              'Logout',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
