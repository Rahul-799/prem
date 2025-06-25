import 'package:flutter/material.dart';
import 'package:foodmart/EGG/egg.dart';
import 'package:foodmart/FISH/fish.dart';
import 'package:foodmart/FISH/fish6.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry.dart';
import 'package:foodmart/FRENCHFRYS/frenchfry3.dart';
import 'package:foodmart/FRUITS/fruits.dart';
import 'package:foodmart/FRUITS/fruits3.dart';
import 'package:foodmart/JUCES/juices.dart';
import 'package:foodmart/JUCES/juices3.dart';
import 'package:foodmart/VEG/veg.dart';
import 'package:foodmart/addtocart.dart';
import 'package:foodmart/biryani/biryani.dart';
import 'package:foodmart/biryani/biryani6.dart';
import 'package:foodmart/chicken/chicken.dart';
import 'package:foodmart/chicken/chicken11.dart';
import 'package:foodmart/products.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          child: Image.asset(
            'assets/MAGES/logo1.png',
            fit: BoxFit.fill,
          ),
        ),
        actions: const [
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.person_2,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Center(
            child: Text(
              'FOOD MART',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const fruits(),
                              ));
                        },
                        child: SizedBox(
                          width: width * 0.18,
                          height: height * 0.1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/MAGES/all fruits mix bowl.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Chicken(),
                              ));
                        },
                        child: SizedBox(
                          width: width * 0.18,
                          height: height * 0.1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/MAGES/bone less kaju chicken.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Biryani(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/bryan.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const fish(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/clasc  fish fry.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Egg(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/boiled egg fry.JPG',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const veg(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/veg manchurian.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const frenchfries(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/peri peri.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const juices(),
                                ));
                          },
                          child: SizedBox(
                            width: width * 0.18,
                            height: height * 0.1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'assets/MAGES/blue lagoon.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: width * 0.95,
                height: height * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/MAGES/1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.055,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search by product name',
                      hintStyle: TextStyle(fontSize: height * 0.025),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: height * 0.035,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(width: width * 0.005)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(width: width * 0.005)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(width: width * 0.005)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.black, width: width * 0.5)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'OUR TRENDNG PRODUCTS',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.024,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                GestureDetector(
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
                )
              ],
            ),
            const SizedBox(
              height: 10,
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
                            'assets/MAGES/prawns biryani.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Prawn Biryani',
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
                        '₹200',
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
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
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
                const SizedBox(
                  width: 20,
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
                        '₹50',
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
                    'Featured',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Products(),
                          ));
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
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
                const SizedBox(
                  width: 20,
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
                            'assets/MAGES/pineapple fruit.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Pine Apple ',
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
                                    builder: (context) => const Fruits3()));
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
                  width: 20,
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
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
