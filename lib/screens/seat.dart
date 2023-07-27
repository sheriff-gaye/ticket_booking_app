import 'package:flutter/material.dart';

void main() {
  runApp(const FlightSeatBookingApp());
}

class FlightSeatBookingApp extends StatelessWidget {
  const FlightSeatBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlightSeatBookingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FlightSeatBookingPage extends StatelessWidget {
  const FlightSeatBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            crossAxisSpacing: 8,
            mainAxisSpacing: 15,
          ),
          itemCount: 41, // 6 seats per row, 4 rows (you can adjust as needed)
          itemBuilder: (context, index) {
            // Add space after every 3 seats
            if ((index + 1) % 3 == 0) {
              return const SizedBox(width: 70); // Adjust the width as needed for spacing
            } else {
              return const SeatWidget();
            }
          },
        ),
      ),
    );
  }
}

class SeatWidget extends StatefulWidget {
  const SeatWidget({super.key});

  @override
  _SeatWidgetState createState() => _SeatWidgetState();
}

class _SeatWidgetState extends State<SeatWidget> {
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isAvailable = !isAvailable;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isAvailable ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'A', // Replace with the seat number or seat ID
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
