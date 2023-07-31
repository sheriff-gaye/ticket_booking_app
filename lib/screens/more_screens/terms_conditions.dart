import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: Text("Terms and Conditions"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Text(
            "Sunny Travels Terms & Conditions",
            style: Styles.headStyle1.copyWith(fontSize: AppLayout.getWidth(22)),
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "1. Booking and Reservations",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "All bookings and reservations made with Sunny Travels are subject to availability. The company reserves the right to cancel or modify any bookings without prior notice.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "2. Baggage Allowance",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Sunny Travels provides a specific baggage allowance for each passenger based on the fare class and destination. Passengers are advised to check the baggage policy before their flight.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "3. Flight Delays and Cancellations",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "In the event of flight delays or cancellations, Sunny Travels will make reasonable efforts to inform passengers. However, the company is not liable for any inconvenience or losses resulting from such delays or cancellations.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "4. Refund and Cancellation Policy",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Refund and cancellation policies vary based on the fare class and booking type. Passengers are advised to review the specific policies applicable to their booking.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "5. Travel Documents",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Passengers are responsible for ensuring they have the necessary travel documents, such as passports and visas, before their flight. Sunny Travels is not responsible for any issues related to travel documents.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "6. Governing Law",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "These terms and conditions shall be governed by and construed in accordance with the laws of the country where Sunny Travels is registered.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "7. Changes to Terms and Conditions",
            style: Styles.headStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Sunny Travels reserves the right to modify or update these terms and conditions at any time. Passengers are advised to regularly review this page for any changes.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "By using Sunny Travels services, passengers agree to be bound by these terms and conditions.",
            style: Styles.textStyle,
          ),
          Gap(AppLayout.getHeight(20)),
        ],
      ),
    );
  }
}
