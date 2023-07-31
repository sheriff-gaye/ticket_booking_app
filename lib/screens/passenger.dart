import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/api/passenger.dart';
import 'package:my_app/screens/more_screens/payment.dart';

class PassengerDetailsPage extends StatefulWidget {
  const PassengerDetailsPage({Key? key}) : super(key: key);

  @override
  _PassengerDetailsPageState createState() => _PassengerDetailsPageState();
}

class _PassengerDetailsPageState extends State<PassengerDetailsPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passportController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  _passenger() async {
    var data = {
      'title': _titleController.text,
      'full_name': _fullNameController.text,
      'email': _emailController.text,
      'country': _countryController.text,
      'phone': _phoneController.text,
      'passport': _passportController.text,
      'dob': _dobController.text
    };

    var res = await PassengerApi().postData(data);
    var body = json.decode(res.body);
    print(body);

    if (body['success']) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Message Sent'),
            content: const Text('Thank you for your message! We will get back to you soon.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PaymentMethodPage()),
                      );
                    },
                    child: const Text('OK')),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('Passenger Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // You can add more complex email validation if needed
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  // You can add more complex phone number validation if needed
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passportController,
                decoration: const InputDecoration(
                  labelText: 'Passport Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your passport number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _countryController,
                decoration: const InputDecoration(
                  labelText: 'Country',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your country';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _dobController,
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  // You can add more complex date of birth validation if needed
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _passenger();
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 16),
                  backgroundColor: const Color.fromARGB(255, 223, 80, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: const Text('Book Ticket'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
