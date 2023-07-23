import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_app/widgets/icon_text.dart';
import 'package:my_app/widgets/icon_text_more.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: (Colors.white),
      body: Padding(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 60),
                  Center(
                    child: Text(
                      "The Pan African Airline",
                      style:
                          TextStyle(color: Color.fromARGB(205, 9, 85, 123), fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              IconTextMore(icon: Icons.check_box_outlined, text: "Check-In"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.airplane_ticket_outlined, text: "Boarding Pass"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.monetization_on_outlined, text: "Cheapest Fare"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.coronavirus_rounded, text: "Covid-19 Updates"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.phone, text: "Contact Us"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.link, text: "Important Links"),
              SizedBox(height: 10),
              InkWell(child: IconTextMore(icon: Icons.settings, text: "Settings")),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.info_outline, text: "About  Us"),
              SizedBox(height: 10),
              IconTextMore(icon: Icons.question_mark_rounded, text: "Faqs"),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "App version 1.0",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          )),
    );
  }
}
