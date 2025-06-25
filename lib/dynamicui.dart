import 'package:flutter/material.dart';
import 'package:foodmart/addtocart.dart';

class vegs extends StatefulWidget {
  const vegs({super.key});

  @override
  State<vegs> createState() => _vegsState();
}

class _vegsState extends State<vegs> {
  final List<Map<String, String>> food = [
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
    },
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
    },
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
    },
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
    },
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
    },
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": 'assets/MAGES/bone less kaju chicken.jpg',
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
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.64,
              ),
              itemCount: food.length,
              itemBuilder: (context, index) {
                final item = food[index];
                return Container(
                    child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: height * 0.22,
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        item['image']!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    item['name']!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    item['serving']!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    item['price']!,
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
                                builder: (context) => const addtocart()));
                      },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.32,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'View more',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.025,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ))
                ]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
