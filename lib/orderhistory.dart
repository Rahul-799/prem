import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final List<Map<String, dynamic>> todayOrders = [
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
  ];

  final List<Map<String, dynamic>> yesterdayOrders = [
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
    {
      'image': 'assets/MAGES/chckn-llypop.jpg',
      'name': 'Mango-Papaya Mix',
      'weight': '250g',
      'price': '₹129',
    },
  ];

  Widget buildOrderCard(Map<String, dynamic> order) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              order['image'],
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order['name'],
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      order['weight'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      order['price'],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("BUY NOW"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOrderSection(String title, List<Map<String, dynamic>> orders) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        ...orders.map(buildOrderCard).toList(),
      ],
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
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new))),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: const Text(
                "ORDERS",
                style: TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildOrderSection("TODAY", todayOrders),
            buildOrderSection("YESTERDAY", yesterdayOrders),
          ],
        ),
      ),
    );
  }
}
