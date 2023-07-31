import 'package:flutter/material.dart';
import 'package:my_app/screens/more_screens/boarding_pass.dart';

class FlightCheckInPage extends StatefulWidget {
  const FlightCheckInPage({Key? key}) : super(key: key);

  @override
  _FlightCheckInPageState createState() => _FlightCheckInPageState();
}

class _FlightCheckInPageState extends State<FlightCheckInPage> {
  final TextEditingController _ticketNumberController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('Flight Check-In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Check-In Eligibility:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Check-in starts 24 hours before the flight and closes 2 hours before departure.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter your Ticket Details',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _ticketNumberController,
                decoration: const InputDecoration(
                  labelText: 'Ticket Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Ticket Number';
                  } else if (!RegExp(r'^\d{13}$').hasMatch(value)) {
                    return "Please enter a valid Ticket Number";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Last Name';
                  }
                  // Add additional validation rules for last name if needed
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // String ticketNumber = _ticketNumberController.text;
                    // String lastName = _lastNameController.text;

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BoardingPassPage()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 20),
                  backgroundColor: const Color.fromARGB(255, 223, 80, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: const Text('Check-In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FlightCheckInPage(),
    debugShowCheckedModeBanner: false,
  ));
}
