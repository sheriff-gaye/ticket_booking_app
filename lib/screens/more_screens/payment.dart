import 'package:flutter/material.dart';
import 'package:my_app/screens/ticket_screen.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int _selectedCardIndex = -1;

  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvcController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add your card selection widget here (similar to previous code)
            const Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            PaymentCardWidget(
              cardType: 'visa',
              cardNumber: '**** **** **** 1234',
              expiryDate: '10/24',
              isSelected: _selectedCardIndex == 0,
              onTap: () {
                setState(() {
                  _selectedCardIndex = 0;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            PaymentCardWidget(
              cardType: 'mastercard',
              cardNumber: '**** **** **** 5678',
              expiryDate: '05/25',
              isSelected: _selectedCardIndex == 1,
              onTap: () {
                setState(() {
                  _selectedCardIndex = 1;
                });
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: CardForm(
                formKey: _formKey,
                cardNumberController: _cardNumberController,
                expiryDateController: _expiryDateController,
                cvcController: _cvcController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentCardWidget extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final String expiryDate;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentCardWidget({
    Key? key,
    required this.cardType,
    required this.cardNumber,
    required this.expiryDate,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor = isSelected
        ? cardType == 'visa'
            ? const Color.fromARGB(255, 65, 155, 245)
            : const Color.fromARGB(255, 211, 67, 67)
        : Colors.grey[200]!;

    Color textColor = isSelected ? Colors.white : Colors.black;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/${cardType.toLowerCase()}.png',
                  height: 40,
                ),
                Icon(
                  Icons.check_circle,
                  color: isSelected ? Colors.white : Colors.transparent,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              cardNumber,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Expiry Date: $expiryDate',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController cardNumberController;
  final TextEditingController expiryDateController;
  final TextEditingController cvcController;

  const CardForm({
    required this.formKey,
    required this.cardNumberController,
    required this.expiryDateController,
    required this.cvcController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Card Details',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: cardNumberController,
            decoration: const InputDecoration(
              labelText: 'Card Number',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter Card Number';
              } else if (!RegExp(r'^\d+$').hasMatch(value)) {
                return "Please enter a valid card number containing only numbers";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: expiryDateController,
            decoration: const InputDecoration(
              labelText: 'Expiry Date (MM/YY)',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter Expiry Date';
              } else if (!RegExp(r"^(0[1-9]|1[0-2])\/\d{2}$").hasMatch(value)) {
                return "Please enter a valid expiry date";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: cvcController,
            decoration: const InputDecoration(
              labelText: 'CVC',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter CVC';
              } else if (!RegExp(r'^\d{3}$').hasMatch(value)) {
                return "Please enter a valid CVC";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                String cardNumber = cardNumberController.text;
                String expiryDate = expiryDateController.text;
                String cvc = cvcController.text;

                // You can use this information for payment processing
                print('Card Number: $cardNumber');
                print('Expiry Date: $expiryDate');
                print('CVC: $cvc');

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TicketApp()),
                );

                // Add your logic to proceed with payment or save card details
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 223, 80, 55),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            ),
            child: const Text('Submit Card'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PaymentMethodPage(),
    debugShowCheckedModeBanner: false,
  ));
}
