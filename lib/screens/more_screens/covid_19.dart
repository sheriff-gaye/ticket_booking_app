import 'package:flutter/material.dart';

class CovidUpdatesPage extends StatelessWidget {
  const CovidUpdatesPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('COVID-19 Updates'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            // Add your COVID-19 updates content here
            Text(
              'COVID-19 Updates for Sunny Travels',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),
            Text(
              'Sunny Travels is committed to the safety and well-being of our passengers. We are closely monitoring the COVID-19 situation and taking all necessary precautions to ensure safe travel.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Before you travel:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '- Check the latest travel advisories and restrictions for your destination.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Wear a mask and practice social distancing at the airport and during your flight.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Frequently wash your hands or use hand sanitizer.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'During your flight:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '- Our aircraft are regularly sanitized for your safety.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Cabin crew will assist with any health and safety measures.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'After your flight:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '- Monitor your health and follow local health guidelines.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'For the latest updates and guidelines, please visit the official Sunny Travels website or contact our customer service.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
