import 'package:flutter/material.dart';
import 'package:my_app/screens/ticket_details.dart';
import 'package:my_app/screens/ticket_view.dart';

import '../utils/app_info.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class FlightAll extends StatelessWidget {
  const FlightAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 80, 55),
          title: const Text('Select Flight Ticket'),
        ),
        backgroundColor: Styles.bgColor,
        body: Stack(children: [
          ListView(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(30)),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AirTicketDetailsPage(
                              ticketType: 'Economy Class',
                              departureDate: '2023-08-15',
                              departureTime: '09:00 AM',
                              arrivalDate: '2023-08-15',
                              arrivalTime: '11:30 AM',
                              price: '\$200')),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[0],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AirTicketDetailsPage(
                              ticketType: 'Economy Class',
                              departureDate: '2023-08-15',
                              departureTime: '09:00 AM',
                              arrivalDate: '2023-08-15',
                              arrivalTime: '11:30 AM',
                              price: '\$400')),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[1],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AirTicketDetailsPage(
                              ticketType: 'Economy Class',
                              departureDate: '2023-08-15',
                              departureTime: '09:00 AM',
                              arrivalDate: '2023-08-15',
                              arrivalTime: '11:30 AM',
                              price: '\$400')),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[2],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AirTicketDetailsPage(
                              ticketType: 'Economy Class',
                              departureDate: '2023-08-15',
                              departureTime: '09:00 AM',
                              arrivalDate: '2023-08-15',
                              arrivalTime: '11:30 AM',
                              price: '\$400')),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[3],
                    ),
                  ),
                ),
              ])
        ]));
  }
}
