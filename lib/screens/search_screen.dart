import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// ignore: unused_import
import 'package:my_app/screens/more.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/icon_text.dart';
import 'package:my_app/widgets/tickets_tab.dart';
import 'package:my_app/widgets/two_header.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearch = true;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Book a Flight",
            style: Styles.headStyle1.copyWith(fontSize: AppLayout.getWidth(33)),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketsTab(left: "One way", right: "Round Trip"),
          Gap(AppLayout.getHeight(25)),
          const IconText(icon: Icons.flight_takeoff, text: "Departure"),
          Gap(AppLayout.getHeight(10)),
          const IconText(icon: Icons.flight_land, text: "Arrival"),
          Gap(AppLayout.getHeight(10)),
          const IconText(icon: Icons.calendar_month_outlined, text: "Departure Date"),
          Gap(AppLayout.getHeight(15)),
          const IconText(icon: Icons.person_rounded, text: "Economy"),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: const Color(0xd91130ce), borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
              child: Text(
                "Search Flight",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const TwoHeader(text_one: "Upcoming Flights", text_two: "View all"),
          Gap(AppLayout.getHeight(15)),
          isSearch == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: AppLayout.getHeight(400),
                      width: size.width * 0.42,
                      padding:
                          EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                          boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.grey.shade200)]),
                      child: Column(
                        children: [
                          Container(
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/sit.jpg"), fit: BoxFit.cover)),
                          ),
                          Gap(AppLayout.getHeight(12)),
                          Text(
                            "20% discount on early bookings of this flight , do not miss the oppertunity",
                            style: Styles.headStyle2,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: AppLayout.getHeight(174),
                          width: size.width * 0.44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                              color: const Color(0xff3ab8b8)),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount for Survey",
                                style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and get dicount",
                                style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Container(
                          height: AppLayout.getHeight(200),
                          width: size.width * 0.44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)), color: Colors.orange),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Excellent \nServices",
                                style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "our airline delivers one of the best services in the aviation industry .",
                                style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
              : const Row(
                  children: [],
                )
        ],
      ),
    );
  }
}
