import 'package:flutter/material.dart';
import 'package:foodmart/cart.dart';
import 'package:foodmart/home.dart';
import 'package:foodmart/products.dart';
import 'package:foodmart/profilr.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _selectedindex = 0;
  List pages = [
    const Home(),
    // const RestaurantList(),
    const Products(),
    const CartScreen(),
    const profile()
  ];
  void _onitemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          // BottomNavigationBarItem(
          //    icon: Icon(Icons.shop_2_outlined), label: 'RestaurantList'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop), label: 'ALL PRODUCTS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'FAVORITE'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'PROFILE'),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _onitemtapped,
      ),
    );
  }
}
