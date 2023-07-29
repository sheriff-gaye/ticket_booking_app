import 'package:flutter/material.dart';
import 'package:my_app/screens/bottom_bar.dart';
import 'package:my_app/screens/register.dart';

import '../api/login.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    final response = await loginUser(email, password);

    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BotttomBar()),
      );
    } else {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(
              child: Text(
            'Login Failed',
            style: TextStyle(fontWeight: FontWeight.w600),
          )),
          content: const Text('Invalid email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                height: 210,
              ),
              TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter  Email Account ";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Please Enter a Valid Email";
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(height: 20),
              TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{5,}$').hasMatch(value)) {
                      return "Incorrect Password";
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    _login();
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 20),
                  backgroundColor: const Color.fromARGB(255, 223, 80, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterApp()),
                  );
                },
                child: const Text(
                  "Don't have an Account ? Register Here",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BotttomBar()),
                  );
                  // Your button action here
                },
                child: const Text(
                  "SKIP",
                  style: TextStyle(color: Color.fromARGB(255, 223, 80, 55), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
