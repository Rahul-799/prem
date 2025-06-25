import 'package:flutter/material.dart';
import 'package:foodmart/EGG/egg1.dart';
import 'package:foodmart/EGG/egg2.dart';
import 'package:foodmart/EGG/egg3.dart';
import 'package:foodmart/EGG/egg4.dart';
import 'package:foodmart/EGG/egg5.dart';
import 'package:foodmart/EGG/egg6.dart';

class Egg extends StatefulWidget {
  const Egg({super.key});

  @override
  State<Egg> createState() => _EggState();
}

class _EggState extends State<Egg> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "Half Boiled Ggg",
      "serving": " (1-piece)",
      "price": "₹15",
      "image": 'assets/MAGES/half boiled egg.jpg',
      "screen": Egg1(),
    },
    {
      "name": " Egg Bhurji ",
      "serving": "(single)",
      "price": "₹60",
      "image": 'assets/MAGES/egg bhurj.jpg',
      "screen": Egg2(),
    },
    {
      "name": "Boiled Egg Fry",
      "serving": "(2-pieces)",
      "price": "₹30",
      "image": 'assets/MAGES/boiled egg fry.JPG',
      "screen": Egg3(),
    },
    {
      "name": "Egg Omlet",
      "serving": "(1-piece)",
      "price": "₹15",
      "image": 'assets/MAGES/egg omelet.jpg',
      "screen": Egg4(),
    },
    {
      "name": "Boiled Egg",
      "serving": "(1-piece)",
      "price": "₹10",
      "image": 'assets/MAGES/boiled egg.webp',
      "screen": Egg5(),
    },
    {
      "name": "Egg Curry",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/egg curry.webp',
      "screen": Egg6(),
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
