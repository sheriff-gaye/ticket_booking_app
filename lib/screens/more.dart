import 'package:flutter/material.dart';
import 'package:my_app/widgets/icon_text.dart';

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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "The Pan African Airline",
                    style: TextStyle(color: Color.fromARGB(255, 9, 85, 123), fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 30),
              IconText(icon: Icons.check_box_outlined, text: "Check-In"),
              SizedBox(height: 25),
              IconText(icon: Icons.airplane_ticket_outlined, text: "Boarding Pass"),
              SizedBox(height: 25),
              IconText(icon: Icons.monetization_on_outlined, text: "Cheapest Fare"),
              SizedBox(height: 25),
              IconText(icon: Icons.coronavirus_rounded, text: "Covid-19 Updates"),
              SizedBox(height: 25),
              IconText(icon: Icons.phone, text: "Contact Us"),
              SizedBox(height: 25),
              IconText(icon: Icons.link, text: "Important Links"),
              SizedBox(height: 25),
              IconText(icon: Icons.settings, text: "Settings"),
              SizedBox(height: 25),
              IconText(icon: Icons.info_outline, text: "About  Us"),
              SizedBox(height: 25),
              IconText(icon: Icons.question_mark_rounded, text: "Faqs"),
              SizedBox(height: 30),
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
