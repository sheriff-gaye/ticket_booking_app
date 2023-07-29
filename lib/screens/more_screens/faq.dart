import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 80, 55),
        title: const Text('Frequently Asked Questions'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          FAQItem(
            question: 'How can I book a flight?',
            answer:
                'You can book a flight by visiting our website or mobile app, or by contacting our customer service helpline.',
          ),
          const Gap(20),
          FAQItem(
            question: 'What is the baggage allowance?',
            answer:
                'Baggage allowance may vary depending on the type of ticket and destination. Please refer to our website for detailed baggage information.',
          ),
          FAQItem(
            question: 'Can I change my flight date?',
            answer:
                'Yes, you can change your flight date by contacting our customer service at least 24 hours before the scheduled departure.',
          ),
          const Gap(20),
          FAQItem(
            question: 'Do you offer in-flight meals?',
            answer:
                'Yes, we offer complimentary in-flight meals on all our flights. Special dietary requirements can be requested during the booking process.',
          ),
          const Gap(20),
          FAQItem(
            question: 'What payment methods are accepted?',
            answer:
                'We accept various payment methods, including credit cards, debit cards, and online payment platforms. Please check our website for the full list of accepted payment methods.',
          ),
          const Gap(20),
          FAQItem(
            question: 'Is online check-in available?',
            answer:
                'Yes, online check-in is available for most of our flights. You can check-in online through our website or mobile app.',
          ),
          const Gap(20),
          FAQItem(
            question: 'What are the travel restrictions due to COVID-19?',
            answer:
                'Travel restrictions may vary depending on the destination and government regulations. Please check our website for the latest travel updates and restrictions.',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({super.key, required this.question, required this.answer});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ExpansionTile(
        title: Text(
          widget.question,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        onExpansionChanged: (value) {
          setState(() {
            expanded = value;
          });
        },
        initiallyExpanded: expanded,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(widget.answer),
          ),
        ],
      ),
    );
  }
}
