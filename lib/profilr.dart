import 'package:flutter/material.dart';

import 'package:foodmart/cart.dart';

import 'package:foodmart/login.dart';
import 'package:foodmart/nformaton.dart';
import 'package:foodmart/orderhistory.dart';
import 'package:foodmart/orders.dart';
import 'package:foodmart/payments.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'FOOD MART',
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.04,
                fontWeight: FontWeight.w500),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.05,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: width * 0.95,
              height: height * 0.2,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(42, 0, 0, 0),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * 0.35,
                    height: height * 0.19,
                    child: Image.asset('assets/MAGES/logo1.png'),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'MANCHE RAHUL YADAV',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.019,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            child: Text(
                              '7995978013',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            child: Text(
                              'rahulmanche58@gmail.com',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InformationPage()));
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'PERSONAL INFORMATION',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ordersscreen()));
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'ORDERS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'FAVORITES',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen()));
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Center(
                        child: Text(
                          'PAYMENT METHOD',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderHistoryScreen()));
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.065,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(42, 0, 0, 0),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text(
                        'ORDER HISTORY',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: width * 0.8,
              height: height * 0.075,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'LOG OUT / LOG IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
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
