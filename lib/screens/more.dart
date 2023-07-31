import 'package:flutter/material.dart';
import 'package:my_app/screens/more_screens/about_us.dart';
import 'package:my_app/screens/more_screens/checkin.dart';
import 'package:my_app/screens/more_screens/contact_us.dart';
import 'package:my_app/screens/more_screens/covid_19.dart';
import 'package:my_app/screens/more_screens/faq.dart';
import 'package:my_app/screens/more_screens/payment.dart';
import 'package:my_app/screens/more_screens/setting.dart';
import 'package:my_app/screens/more_screens/terms_conditions.dart';
import 'package:my_app/widgets/icon_text_more.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: (Colors.white),
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 35),
                  Center(
                    child: Text(
                      "The Pan African Airline",
                      style:
                          TextStyle(color: Color.fromARGB(205, 9, 85, 123), fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              IconTextMore(
                  icon: Icons.airplane_ticket_outlined,
                  text: "Check-in",
                  bgColor: Colors.green,
                  iconColor: Colors.white,
                  route: FlightCheckInPage()),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.payment,
                  text: "Payment Method",
                  bgColor: Colors.blue,
                  iconColor: Colors.white,
                  route: PaymentMethodPage()),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.coronavirus_rounded,
                  text: "Covid-19 Updates",
                  bgColor: Colors.red,
                  iconColor: Colors.white,
                  route: CovidUpdatesPage()),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.phone,
                  text: "Contact Us",
                  bgColor: Colors.grey,
                  iconColor: Colors.white,
                  route: ContactUsPage()),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                child: IconTextMore(
                    icon: Icons.settings,
                    text: "Settings",
                    bgColor: Colors.blueGrey,
                    iconColor: Colors.white,
                    route: FlightSettingsPage()),
              ),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.info_outline,
                  text: "About  Us",
                  bgColor: Colors.indigo,
                  iconColor: Colors.white,
                  route: AboutUsPage()),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.menu_book_outlined,
                  text: "Tersm & Condition",
                  bgColor: Colors.orange,
                  iconColor: Colors.white,
                  route: TermsAndConditionsPage()),
              Divider(
                color: Colors.grey,
              ),
              IconTextMore(
                  icon: Icons.question_mark_rounded,
                  text: "Faqs",
                  bgColor: Color.fromARGB(255, 183, 86, 80),
                  iconColor: Colors.white,
                  route: FAQPage()),
              Text(
                "App Version 1.0",
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
