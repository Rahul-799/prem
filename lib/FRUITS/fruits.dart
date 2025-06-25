import 'package:flutter/material.dart';
import 'package:foodmart/FRUITS/fruits1.dart';
import 'package:foodmart/FRUITS/fruits2.dart';
import 'package:foodmart/FRUITS/fruits3.dart';
import 'package:foodmart/FRUITS/fruits4.dart';
import 'package:foodmart/FRUITS/fruits5.dart';
import 'package:foodmart/FRUITS/fruits6.dart';
import 'package:foodmart/FRUITS/fruits7.dart';
import 'package:foodmart/FRUITS/fruits8.dart';

class fruits extends StatefulWidget {
  const fruits({super.key});

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "All Aic Aruits",
      "serving": "1-bowl",
      "price": "₹100",
      "image": 'assets/MAGES/all fruits mix bowl.jpg',
      "screen": Fruits1(),
    },
    {
      "name": " Apple ",
      "serving": "(1-bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/apple.jpg',
      "screen": Fruits2(),
    },
    {
      "name": "Pine Apple",
      "serving": "(1-bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/pineapple fruit.png',
      "screen": Fruits3(),
    },
    {
      "name": "Promogranate",
      "serving": "(1-bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/pomegranate.jpg',
      "screen": Fruits4(),
    },
    {
      "name": "Black Grapes",
      "serving": "(1-bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/black grapes.jpg',
      "screen": Fruits5(),
    },
    {
      "name": "Orange",
      "serving": "(1-bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/oranges.jpg',
      "screen": Fruits6(),
    },
    {
      "name": " Dragon Fruit",
      "serving": "(1-bowl)",
      "price": "₹60",
      "image": 'assets/MAGES/dragon fruit.jpg',
      "screen": Fruits7(),
    },
    {
      "name": " Grapes",
      "serving": "(1 -bowl)",
      "price": "₹40",
      "image": 'assets/MAGES/grapes.jpg',
      "screen": Fruits8(),
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
