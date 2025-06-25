import 'package:flutter/material.dart';
import 'package:foodmart/lastpay.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String selectedPayment = 'UPI';

  final List<Map<String, String>> paymentMethods = [
    {
      'label': 'UPI',
      'description': 'Pay instantly via Google Pay, Phone Pay or other.',
      'icon': 'assets/icons/upi.png', // use real icons or Icons.qr_code
    },
    {
      'label': 'CREDIT / DEBIT CARD',
      'description': 'Pay with Visa, Master Card or Rupay.',
      'icon': 'assets/icons/card.png',
    },
    {
      'label': 'NET BANKING',
      'description': 'Secure payment via your bank.',
      'icon': 'assets/icons/bank.png',
    },
    {
      'label': 'CASH ON DELIVERY',
      'description': 'Pay when you receive the money.',
      'icon': 'assets/icons/cash.png',
    },
  ];

  void onConfirm() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Selected Payment: $selectedPayment')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'FOOD MART',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: const Text(
                'SELECT PAYMENT METHOD',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: paymentMethods.length,
                itemBuilder: (context, index) {
                  final method = paymentMethods[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        // Payment Icon
                        Icon(Icons.payment,
                            size: 30), // or Image.asset(method['icon'])
                        const SizedBox(width: 16),

                        // Payment Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                method['label']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                method['description']!,
                                style: const TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),

                        // Radio button
                        Radio<String>(
                          value: method['label']!,
                          groupValue: selectedPayment,
                          onChanged: (value) {
                            setState(() {
                              selectedPayment = value!;
                            });
                          },
                          activeColor: Colors.amber, // Yellow like in image
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),

            // Confirm & Pay button
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Lastpay()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'CONFIRM & PAY',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
