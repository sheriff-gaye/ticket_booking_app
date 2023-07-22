import 'package:flutter/material.dart';

class FlightSettingsPage extends StatefulWidget {
  const FlightSettingsPage({super.key});

  @override
  _FlightSettingsPageState createState() => _FlightSettingsPageState();
}

class _FlightSettingsPageState extends State<FlightSettingsPage> {
  bool _directFlightsOnly = false;
  bool _flexibleDates = false;
  bool _newsletterSubscribed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text("App Settings")),
            CheckboxListTile(
              title: const Text('Show Direct Flights Only'),
              value: _directFlightsOnly,
              onChanged: (value) {
                setState(() {
                  _directFlightsOnly = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Flexible Dates'),
              value: _flexibleDates,
              onChanged: (value) {
                setState(() {
                  _flexibleDates = value!;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Subscribe to Newsletter'),
              value: _newsletterSubscribed,
              onChanged: (value) {
                setState(() {
                  _newsletterSubscribed = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save settings logic here
                print('Direct Flights Only: $_directFlightsOnly');
                print('Flexible Dates: $_flexibleDates');
                print('Newsletter Subscribed: $_newsletterSubscribed');
              },
              child: Text('Save Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
