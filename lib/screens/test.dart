import 'package:flutter/material.dart';

void main() {
  runApp(const portUI());
}

// ignore: camel_case_types
class portUI extends StatelessWidget {
  const portUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AirportSelectionScreen(),
    );
  }
}

class Airport {
  final String code;
  final String name;

  Airport(this.code, this.name);
}

class AirportSelectionScreen extends StatefulWidget {
  const AirportSelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AirportSelectionScreenState createState() => _AirportSelectionScreenState();
}

class _AirportSelectionScreenState extends State<AirportSelectionScreen> {
  final List<Airport> allAirports = [
    Airport("JFK", "John F. Kennedy International Airport"),
    Airport("LAX", "Los Angeles International Airport"),
    Airport("LHR", "Heathrow Airport"),
    // Add more airports to the list
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Airport Selection")),
      body: ListView.builder(
        itemCount: allAirports.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // You can do something when the user selects an airport
              _selectedAirport(allAirports[index]);
            },
            title: Text(allAirports[index].name),
            subtitle: Text(allAirports[index].code),
          );
        },
      ),
    );
  }

  void _selectedAirport(Airport airport) {
    // Here you can handle the selected airport and navigate to the next screen
    print("Selected Airport: ${airport.name} (${airport.code})");
    // Example: You can use Navigator.push to navigate to the next screen with the selected airport.
  }
}
