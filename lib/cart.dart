import 'package:flutter/material.dart';
import 'package:foodmart/payments.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> items = [
    {
      "name": "Garlic Mayo Fries",
      "qty": 250,
      "price": 120,
      "img": 'assets/MAGES/garlic mayo fries1.jpg'
    },
    {
      "name": "EGG BIRYANI",
      "qty": 250,
      "price": 100,
      "img": 'assets/MAGES/egg biryani.webp'
    },
    {
      "name": "Strawberry CoolE",
      "qty": 250,
      "price": 120,
      "img": 'assets/MAGES/strawberry coole.png'
    },
  ];

  String selectedTime = 'Select Time';
  List<String> deliveryTimes = ['After 30 mins', 'After 45 mins', 'After 1 hr'];

  int get totalAmount =>
      items.fold(0, (sum, item) => sum + (item["price"] as int));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('FOOD MART',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
        ),
        leading: Image.asset('assets/MAGES/logo1.png'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text('OUR CART',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700)),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // one per row
                mainAxisSpacing: 10,
                childAspectRatio: 4.2,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item["img"],
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(item["name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text('${item["qty"]}g    ₹${item["price"]}',
                                style: const TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          ),

          const Divider(thickness: 1, color: Colors.black),

          // TOTAL
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.grey[300],
              child: Text(
                "TOTAL: ₹$totalAmount",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),

          // TIME DROPDOWN
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: Colors.grey[300],
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedTime == 'Select Time' ? null : selectedTime,
                hint: const Text("DELIVERED AFTER"),
                onChanged: (value) {
                  setState(() {
                    selectedTime = value!;
                  });
                },
                items: deliveryTimes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),

          // FINAL BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: const Text("BUY NOW",
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            ),
          ),
        ],
      ),
    );
  }
}
