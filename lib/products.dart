import 'package:flutter/material.dart';
import 'package:foodmart/EGG/egg.dart';
import 'package:foodmart/EGG/egg1.dart';
import 'package:foodmart/EGG/egg2.dart';
import 'package:foodmart/EGG/egg4.dart';
import 'package:foodmart/FISH/fish.dart';
import 'package:foodmart/FISH/fish1.dart';
import 'package:foodmart/FISH/fish4.dart';
import 'package:foodmart/FISH/fish6.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry1.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry2.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry3.dart';
import 'package:foodmart/FRUITS/fruits.dart';
import 'package:foodmart/FRUITS/fruits1.dart';
import 'package:foodmart/FRUITS/fruits6.dart';
import 'package:foodmart/FRUITS/fruits7.dart';
import 'package:foodmart/JUCES/juices.dart';
import 'package:foodmart/JUCES/juices1.dart';
import 'package:foodmart/JUCES/juices2.dart';
import 'package:foodmart/JUCES/juices3.dart';
import 'package:foodmart/VEG/veg.dart';
import 'package:foodmart/VEG/veg1.dart';
import 'package:foodmart/VEG/veg2.dart';
import 'package:foodmart/VEG/veg3.dart';

import 'package:foodmart/biryani/biryani.dart';
import 'package:foodmart/biryani/biryani1.dart';
import 'package:foodmart/biryani/biryani2.dart';
import 'package:foodmart/biryani/biryani6.dart';
import 'package:foodmart/chicken/chicken.dart';

import 'package:foodmart/chicken/chicken11.dart';
import 'package:foodmart/chicken/chicken2.dart';
import 'package:foodmart/chicken/chicken3.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'FOOD MART',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            child: Image.asset(
              'assets/MAGES/logo1.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Chicken',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Chicken(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/chicken 65.jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Chicken 65',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹130 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Chicken2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/chckn-llypop.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Chicken Lolipop',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '  (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Chicken3()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/chilly Chicken1.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Chilly Chicken',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '(single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Chicken11()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Fish items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const fish(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/appollo fish1.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Appolla Fish',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (SINGLR)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹220 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fish1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/tandoor fish fry.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Tandoori Fish',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (1 piece)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹160 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fish4()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/fish fry1.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        ' Fish Fry',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (1 piece)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹50 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fish6()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Biryani',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Biryani()));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/bryan.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Dum Biryani',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '  (single',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹150 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Biryani1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/chitty muthyala biryani.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Chitty Muthyala',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹150 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Biryani2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/prawns biryani.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Prawns Biryani',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹220 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Biryani6()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Veg Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const veg()));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/veg manchurian.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Veg Manchurian',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Veg1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/veg fried rice.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Veg Fried Rice',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '(single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Veg2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/veg noodles.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Veg Noodles',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Veg3()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'EGG Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Egg()));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/half boiled egg.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Text(
                        'Half Boiled Egg',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '  (1 Piece)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹15 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Egg1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/egg bhurj.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Egg Burji',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '(single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹60 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Egg2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/egg omelet.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Egg Omlet',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (1 piece)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹15 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Egg4()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const fruits(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/all fruits mix bowl.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'All Fruits Mix ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' 1-Bowl',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹100 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fruits1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/dragon fruit.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Dragon Fruit',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '1-Bowl',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹60',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fruits7()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/oranges.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Oranges',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' 1-Bowl',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹40',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fruits6()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'French frys',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const frenchfries(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/french fries.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'French Fries',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹100 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Frenchfry1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/peri peri.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Peri Peri',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' (single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹100',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Frenchfry2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/classic salted.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Classic Salted',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' single)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Frenchfry3()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Mocktails',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.035,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const juices(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/virgin mojito.webp',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Virgin Mojito',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' 1-Glass',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120 ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Juices1()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/blue lagoon.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Blue Lagoon',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' 1-Glass',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Juices2()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/MAGES/fruit punch.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Fruit Punch',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' 1-Glass',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₹120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Juices3()));
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.045,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'View more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
