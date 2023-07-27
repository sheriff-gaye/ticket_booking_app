import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/api/register.dart';
import 'package:my_app/screens/bottom_bar.dart';
import 'package:my_app/screens/login.dart';

void main() => runApp(const RegisterApp());

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  _register() async {
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (password == confirmPassword) {
      var data = {
        'name': _fullNameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      };

      var res = await CallApi().postData(data);
      var body = json.decode(res.body);

      if (body['success']) {
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BotttomBar()),
        );
      } else {
        print("error");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 23, right: 23),
        child: SingleChildScrollView(
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
                    controller: _fullNameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty || RegExp(r' ^[a-z A-Z]+ $').hasMatch(value)) {
                        return "Enter Correct Name";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 20),
                TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter  Email";
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
                      } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$').hasMatch(value)) {
                        return "Minimum five characters, at least one letter and one number";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 20),
                TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                    validator: (value) {
                      if (_passwordController.text != _confirmPasswordController.text) {
                        return "Password Do not Match";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 30),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _register();
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
                    'REGISTER',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginApp()),
                    );
                  },
                  child: const Text(
                    "Already have an Account? Login Here",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
