import 'package:flutter/material.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry1.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry2.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry3.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry4.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry5.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry6.dart';

class frenchfries extends StatefulWidget {
  const frenchfries({super.key});

  @override
  State<frenchfries> createState() => _frenchfriesState();
}

class _frenchfriesState extends State<frenchfries> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "French Fries",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/french fries.jpg',
      "screen": Frenchfry1(),
    },
    {
      "name": "Peri Peri ",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/peri peri.jpg',
      "screen": Frenchfry2(),
    },
    {
      "name": "Classic Salted",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/classic salted.jpg',
      "screen": Frenchfry3(),
    },
    {
      "name": "Garlic Mayo Fries",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/garlic mayo fries1.jpg',
      "screen": Frenchfry4(),
    },
    {
      "name": "Cheese Fries",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/cheese fries.jpg',
      "screen": Frenchfry5(),
    },
    {
      "name": "Loaded Fries",
      "serving": "(single)",
      "price": "₹150",
      "image": 'assets/MAGES/loaded fries.jpg',
      "screen": Frenchfry6(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'BIRYANIS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: food.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.59,
          ),
          itemBuilder: (context, index) {
            final item = food[index];
            return Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: height * 0.22,
                  width: width * 0.4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      item['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  item['name']!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  item['serving']!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  item['price']!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item['screen'],
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: height * 0.05,
                    width: width * 0.32,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'View more',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
