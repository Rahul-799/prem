import 'package:flutter/material.dart';
import 'package:foodmart/VEG/veg1.dart';
import 'package:foodmart/VEG/veg2.dart';
import 'package:foodmart/VEG/veg3.dart';
import 'package:foodmart/VEG/veg4.dart';
import 'package:foodmart/VEG/veg5.dart';
import 'package:foodmart/VEG/veg6.dart';

class veg extends StatefulWidget {
  const veg({super.key});

  @override
  State<veg> createState() => _vegState();
}

class _vegState extends State<veg> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "veg manchurian",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/veg manchurian.jpg',
      "screen": Veg1(),
    },
    {
      "name": "veg fried rice ",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/veg fried rice.jpg',
      "screen": Veg2(),
    },
    {
      "name": "veg noodles",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/veg noodles.jpg',
      "screen": Veg3(),
    },
    {
      "name": " spring rolls",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/spring roll.webp',
      "screen": Veg4(),
    },
    {
      "name": "shilli mushroom",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/chilly mushroom.jpg',
      "screen": Veg5(),
    },
    {
      "name": "paneer schezwar",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/paneer schezwan.webp',
      "screen": Veg6(),
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
