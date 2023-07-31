import 'package:flutter/material.dart';

class BoardingPassPage extends StatelessWidget {
  const BoardingPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text("Boarding Pass"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildPassengerInfo(),
            const SizedBox(height: 20),
            _buildFlightInfo(),
            const SizedBox(height: 20),
            _buildBoardingDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      children: [
        Icon(Icons.flight_takeoff, size: 40, color: Colors.blue),
        SizedBox(width: 10),
        Text(
          "Sunny Travels",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildPassengerInfo() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Passenger Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text("Name: Sheriff Gaye"),
          Text("Seat: 23A"),
        ],
      ),
    );
  }

  Widget _buildFlightInfo() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Flight Information",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text("Flight: ST123"),
          Text("From: Ghana (GHN)"),
          Text("To: Gambia (GMB)"),
          Text("Departure: 14:15 PM"),
          Text("Arrival: 6:35 PM"),
        ],
      ),
    );
  }

  Widget _buildBoardingDetails() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Boarding Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text("Gate: A12"),
          const Text("Boarding Time: 14:00 AM"),
          const Text("Boarding Pass ID: 7890-1234-5678"),
          const SizedBox(height: 10),
          _buildQRCode(),
        ],
      ),
    );
  }

  Widget _buildQRCode() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.qr_code, size: 100, color: Color.fromARGB(255, 17, 17, 17)),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const BoardingPassPage(),
    theme: ThemeData(
      primaryColor: Colors.blue,
      hintColor: Colors.blue,
    ),
  ));
}
