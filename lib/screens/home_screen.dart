import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/hotel_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Gap(AppLayout.getHeight(17)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back", style: Styles.headStyle3),
                    SizedBox(
                      height: AppLayout.getHeight(5),
                    ),
                    Text(
                      "Sheriff",
                      style: Styles.headStyle1,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the ProfileScreen when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/avatar3.jpg"),
                      ),
                    ),
                    height: AppLayout.getHeight(50),
                    width: AppLayout.getWidth(50),
                  ),
                )
              ]),
              Gap(AppLayout.getHeight(20)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(15, 45, 63, 131),
                ),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: Styles.headStyle4,
                          fillColor: const Color.fromARGB(255, 46, 102, 130),
                          border: InputBorder.none,
                        ),
                        style: Styles.headStyle4,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(35)),
              const TwoHeader(text_one: "Upcoming Flights", text_two: "View all"),
            ]),
          ),
          Gap(AppLayout.getHeight(13)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(13)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TwoHeader(text_one: "Hotels", text_two: "View all"),
          ),
          Gap(AppLayout.getHeight(10)),
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
