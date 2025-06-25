import 'package:flutter/material.dart';
import 'package:foodmart/JUCES/juices1.dart';
import 'package:foodmart/JUCES/juices2.dart';
import 'package:foodmart/JUCES/juices3.dart';
import 'package:foodmart/JUCES/juices4.dart';
import 'package:foodmart/JUCES/juices5.dart';
import 'package:foodmart/JUCES/juices6.dart';

class juices extends StatefulWidget {
  const juices({super.key});

  @override
  State<juices> createState() => _juicesState();
}

class _juicesState extends State<juices> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "Virigin Mojito",
      "serving": "1-glass",
      "price": "₹120",
      "image": 'assets/MAGES/virgin mojito.webp',
      "screen": Juices1(),
    },
    {
      "name": "Blue Lagoon ",
      "serving": "(1-glass)",
      "price": "₹120",
      "image": 'assets/MAGES/blue lagoon.jpg',
      "screen": Juices2(),
    },
    {
      "name": "Fruit Punch",
      "serving": "(1-glass)",
      "price": "₹120",
      "image": 'assets/MAGES/fruit punch.png',
      "screen": Juices3(),
    },
    {
      "name": "Strawberry CoolE",
      "serving": "(1-glass)",
      "price": "₹120",
      "image": 'assets/MAGES/strawberry coole.png',
      "screen": Juices4(),
    },
    {
      "name": "Mango Mule",
      "serving": "(1-glass)",
      "price": "₹120",
      "image": 'assets/MAGES/mango mule.jpg',
      "screen": Juices5(),
    },
    {
      "name": " Watermelon Mint",
      "serving": "(1-glass)",
      "price": "₹120",
      "image": 'assets/MAGES/watermelon mint.jpg',
      "screen": Juices6(),
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
