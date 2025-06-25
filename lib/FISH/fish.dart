import 'package:flutter/material.dart';
import 'package:foodmart/FISH/fish1.dart';
import 'package:foodmart/FISH/fish2.dart';
import 'package:foodmart/FISH/fish3.dart';
import 'package:foodmart/FISH/fish4.dart';
import 'package:foodmart/FISH/fish5.dart';
import 'package:foodmart/FISH/fish6.dart';

class fish extends StatefulWidget {
  const fish({super.key});

  @override
  State<fish> createState() => _fishState();
}

class _fishState extends State<fish> {
  final List<Map<String, dynamic>> food = [
    {
      "name": "Appolla Fish Fry",
      "serving": "(single)",
      "price": "₹220",
      "image": 'assets/MAGES/appollo fish1.jpg',
      "screen": Fish1(),
    },
    {
      "name": "Classic Fish Fry ",
      "serving": "(1-piece)",
      "price": "₹100",
      "image": 'assets/MAGES/clasc  fish fry.jpg',
      "screen": Fish2(),
    },
    {
      "name": "Masala Fish Fry",
      "serving": "(1piece)",
      "price": "₹140",
      "image": 'assets/MAGES/masala fish.jpg',
      "screen": Fish3(),
    },
    {
      "name": "Tandoori Fish Fry",
      "serving": "(1-piece)",
      "price": "₹160",
      "image": 'assets/MAGES/tandoor fish fry.jpg',
      "screen": Fish4(),
    },
    {
      "name": "Crispy Pomfret Fry",
      "serving": "(1-piece)",
      "price": "₹200",
      "image": 'assets/MAGES/crspy pomfretfish fry1.jpg',
      "screen": Fish5(),
    },
    {
      "name": "Fish Fry",
      "serving": "(1-piece)",
      "price": "₹50",
      "image": 'assets/MAGES/fish fry1.jpg',
      "screen": Fish6(),
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
