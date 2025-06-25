import 'package:flutter/material.dart';
import 'package:foodmart/biryani/biryani1.dart';
import 'package:foodmart/biryani/biryani2.dart';
import 'package:foodmart/biryani/biryani3.dart';
import 'package:foodmart/biryani/biryani4.dart';
import 'package:foodmart/biryani/biryani5.dart';
import 'package:foodmart/biryani/biryani6.dart';

class Biryani extends StatefulWidget {
  const Biryani({super.key});

  @override
  State<Biryani> createState() => _BiryaniState();
}

class _BiryaniState extends State<Biryani> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "DUM Biryani",
      "serving": "(single)",
      "price": "₹150",
      "image": 'assets/MAGES/dum biryani.jpg',
      "screen": Biryani1(),
    },
    {
      "name": "CHITTY MUTHYALI ",
      "serving": "BIRYANI",
      "price": "₹150",
      "image": 'assets/MAGES/chitty muthyala biryani.jpg',
      "screen": Biryani2(),
    },
    {
      "name": "MUTTON BIRYANI",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/mutton biryani.jpg',
      "screen": Biryani3(),
    },
    {
      "name": "VEG Biryani",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/veg biryani.jpg',
      "screen": Biryani4(),
    },
    {
      "name": "EGG BIRYANI",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/egg biryani.webp',
      "screen": Biryani5(),
    },
    {
      "name": "PRAWNS BIRYANI",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/prawns biryani.jpg',
      "screen": Biryani6(),
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
