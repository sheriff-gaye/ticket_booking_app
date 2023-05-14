import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/hotel_screen.dart';
import 'package:my_app/screens/ticket_view.dart';
import 'package:my_app/utils/app_info.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';

import '../widgets/two_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Gap(AppLayout.getHeight(40)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning", style: Styles.headStyle3),
                    SizedBox(
                      height: AppLayout.getHeight(5),
                    ),
                    Text(
                      "Book Tickets",
                      style: Styles.headStyle1,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:
                          const DecorationImage(fit: BoxFit.fitHeight, image: AssetImage("assets/images/img_1.png"))),
                  height: AppLayout.getHeight(50),
                  width: AppLayout.getWidth(50),
                )
              ]),
              Gap(AppLayout.getHeight(25)),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(15, 45, 63, 131)),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xFFBFC205),
                    ),
                    Text(
                      "Search",
                      style: Styles.headStyle4,
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              const TwoHeader(text_one: "Upcoming Flights", text_two: "View all"),
            ]),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TwoHeader(text_one: "Hotels", text_two: "View all"),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HostelScreen(hotel: singleHotel)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
