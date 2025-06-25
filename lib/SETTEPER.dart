import 'package:flutter/material.dart';

class FoodMenuGrid extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      "name": "Prawn Biryani",
      "serving": "(single)",
      "price": "₹200",
      "image": "assets/prawn_biryani.png",
    },
    {
      "name": "Chilly Chicken",
      "serving": "(single)",
      "price": "₹120",
      "image": "assets/chilly_chicken.png",
    },
    {
      "name": "Fish Fry",
      "serving": "(1 piece)",
      "price": "₹50",
      "image": "assets/fish_fry.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF4FC),
      appBar: AppBar(title: Text("Food Menu")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: foodItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Change to 3 for wider screens
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final item = foodItems[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      item['image']!,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(item['name']!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(item['serving']!, style: TextStyle(fontSize: 14)),
                  Text(item['price']!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text("View more"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
