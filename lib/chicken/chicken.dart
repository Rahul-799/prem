import 'package:flutter/material.dart';
import 'package:foodmart/chicken/chicken1.dart';
import 'package:foodmart/chicken/chicken10.dart';
import 'package:foodmart/chicken/chicken11.dart';
import 'package:foodmart/chicken/chicken12.dart';
import 'package:foodmart/chicken/chicken13.dart';
import 'package:foodmart/chicken/chicken14.dart';
import 'package:foodmart/chicken/chicken2.dart';
import 'package:foodmart/chicken/chicken3.dart';
import 'package:foodmart/chicken/chicken4.dart';
import 'package:foodmart/chicken/chicken5.dart';
import 'package:foodmart/chicken/chicken6.dart';
import 'package:foodmart/chicken/chicken7.dart';
import 'package:foodmart/chicken/chicken8.dart';
import 'package:foodmart/chicken/chicken9.dart';

class Chicken extends StatefulWidget {
  const Chicken({super.key});

  @override
  State<Chicken> createState() => _ChickenState();
}

class _ChickenState extends State<Chicken> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "BONELESS KAJU",
      "serving": "CHICKEN FRY",
      "price": "₹150",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
      "screen": Chicken1(),
    },
    {
      "name": "CHICKEN 65 ",
      "serving": "(single)",
      "price": "₹130",
      "image": 'assets/MAGES/chicken 65.jpeg',
      "screen": Chicken2(),
    },
    {
      "name": "Chicken lollipop",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/chckn-llypop.jpg',
      "screen": Chicken3(),
    },
    {
      "name": "Chicken legs",
      "serving": "(2pcs)",
      "price": "₹120",
      "image": 'assets/MAGES/Chocken leg.webp',
      "screen": Chicken4(),
    },
    {
      "name": "Chicken wings",
      "serving": "(4pcs)",
      "price": "₹140",
      "image": 'assets/MAGES/chicken wings.jpg',
      "screen": Chicken5(),
    },
    {
      "name": "Chicken legs",
      "serving": "(2pcs)",
      "price": "₹120",
      "image": 'assets/MAGES/Chocken leg.webp',
      "screen": Chicken6(),
    },
    {
      "name": "Chicken strips",
      "serving": "(3pcs)",
      "price": "₹75",
      "image": 'assets/MAGES/chicken strips1.jpg',
      "screen": Chicken7(),
    },
    {
      "name": "Chicken wraps",
      "serving": "(1 wrape)",
      "price": "₹100",
      "image": 'assets/MAGES/Chicken wrapes1.jpg',
      "screen": Chicken8(),
    },
    {
      "name": "Chicken kabab",
      "serving": "(single)",
      "price": "₹100",
      "image": 'assets/MAGES/Chicken kabab1.jpg',
      "screen": Chicken9(),
    },
    {
      "name": "Chicken fry",
      "serving": "(single)",
      "price": "₹130",
      "image": 'assets/MAGES/Chicken fry1.jpg',
      "screen": Chicken10(),
    },
    {
      "name": "Chilly chicken ",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/chilly Chicken1.jpg',
      "screen": Chicken11(),
    },
    {
      "name": "Ghee rosted",
      "serving": "chicken",
      "price": "₹130",
      "image": 'assets/MAGES/green rosted Chicken.jpg',
      "screen": Chicken12(),
    },
    {
      "name": "Chicken curry",
      "serving": "(single)",
      "price": "₹120",
      "image": 'assets/MAGES/Chicken curry.jpg',
      "screen": Chicken13(),
    },
    {
      "name": "Butter chicken ",
      "serving": "curry",
      "price": "₹120",
      "image": 'assets/MAGES/butter Chicken curry1.jpg',
      "screen": Chicken14(),
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
            'CHICKEN',
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
