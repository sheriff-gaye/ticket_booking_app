import 'package:flutter/material.dart';
import 'package:my_app/screens/bottom_bar.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/utils/app_styles.dart';
import '../utils/app_layout.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg'),
            // Image.asset('assets/images/28892.jpg'),
            const SizedBox(height: 20),
            const Text(
              'EASY WAY TO YOUR NEXT DESTINATION',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 43, 145, 228),
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              "Fly with confidence. Our Mobile app simplifies airplane ticketing  for a smooth travel experience thank you for being with us . ",
              style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 128, 125, 125)),
            ),
            const SizedBox(height: 65),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginApp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 20),
                  backgroundColor: const Color.fromARGB(255, 223, 80, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_right_alt_outlined)
                    ],
                  ),
                )),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
