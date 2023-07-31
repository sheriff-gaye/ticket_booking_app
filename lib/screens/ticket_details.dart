import 'package:flutter/material.dart';
import 'package:my_app/screens/passenger.dart';
import 'package:my_app/screens/ticket_view.dart';

import '../utils/app_info.dart';
import '../utils/app_layout.dart';

class AirTicketDetailsPage extends StatelessWidget {
  final String ticketType;
  final String departureDate;
  final String departureTime;
  final String arrivalDate;
  final String arrivalTime;
  final String price;

  const AirTicketDetailsPage({
    required this.ticketType,
    required this.departureDate,
    required this.departureTime,
    required this.arrivalDate,
    required this.arrivalTime,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('Air Ticket Details'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[1],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Text(
                'Ticket Type: $ticketType',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Departure Date: $departureDate',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Departure Time: $departureTime',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Arrival Date: $arrivalDate',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Arrival Time: $arrivalTime',
              style: const TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Price: $price',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PassengerDetailsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Book Ticket', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AirTicketDetailsPage(
      ticketType: 'Economy Class',
      departureDate: '2023-08-15',
      departureTime: '09:00 AM',
      arrivalDate: '2023-08-15',
      arrivalTime: '11:30 AM',
      price: '\$200',
    ),
    debugShowCheckedModeBanner: false,
  ));
}
