import 'package:flutter/material.dart';
import 'package:my_app/widgets/icon_text_more.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: (Colors.white),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 50),
                  Center(
                    child: Text(
                      "The Pan African Airline",
                      style:
                          TextStyle(color: Color.fromARGB(205, 9, 85, 123), fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              IconTextMore(
                icon: Icons.check_box_outlined,
                text: "Check-In",
                bgColor: Colors.orange,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.airplane_ticket_outlined,
                text: "Boarding Pass",
                bgColor: Colors.green,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.monetization_on_outlined,
                text: "Cheapest Fare",
                bgColor: Colors.blue,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.coronavirus_rounded,
                text: "Covid-19 Updates",
                bgColor: Colors.red,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.phone,
                text: "Contact Us",
                bgColor: Colors.grey,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.link,
                text: "Important Links",
                bgColor: Colors.purple,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                child: IconTextMore(
                  icon: Icons.settings,
                  text: "Settings",
                  bgColor: Colors.blueGrey,
                  iconColor: Colors.white,
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.info_outline,
                text: "About  Us",
                bgColor: Colors.indigo,
                iconColor: Colors.white,
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                icon: Icons.question_mark_rounded,
                text: "Faqs",
                bgColor: Color.fromARGB(255, 183, 86, 80),
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
