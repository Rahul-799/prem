import 'package:flutter/material.dart';

class addtocart extends StatelessWidget {
  const addtocart({super.key});

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
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: height * 0.045,
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
              height: 5,
            ),
            Center(
              child: Text(
                'ADD TO CART',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.04,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: SizedBox(
                width: width * 0.95,
                height: height * 0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/MAGES/virgin mojito.webp',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Watermelon Mint',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.04,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    '₹120',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 84, 6, 241),
                        fontSize: height * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: width * 0.9,
              child: Text(
                '**Watermelon Mint** is a refreshing and hydrating combination perfect for hot days. This blend features the sweet, juicy flavor of ripe watermelon balanced with the cool, invigorating notes of fresh mint leaves. Its a naturally delicious option that soothes your thirst while providing a burst of flavor. Watermelon is rich in water content, vitamins A and C, and antioxidants like lycopene, while mint aids digestion and ad guilt-free treat suitable for all ages.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.079,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  'ADD TO CART',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 249, 248, 250),
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
