import 'package:flutter/material.dart';

class RestaurantList extends StatefulWidget {
  const RestaurantList({super.key});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final List<Map<String, dynamic>> restaurantData = [
    {
      'name': 'AV FOOD MART',
      'rating': 4,
      'image': 'assets/MAGES/logo1.png',
    },
    {
      'name': 'Y MART',
      'rating': 5,
      'image': 'assets/MAGES/logo1.png',
    },
    {
      'name': 'AV FOOD MART',
      'rating': 5,
      'image': 'assets/MAGES/logo1.png',
    },
    {
      'name': 'Y MART',
      'rating': 4,
      'image': 'assets/MAGES/logo1.png',
    },
    {
      'name': 'AV FOOD MART',
      'rating': 5,
      'image': 'assets/MAGES/logo1.png',
    },
    {
      'name': 'Y MART',
      'rating': 5,
      'image': 'assets/MAGES/logo1.png',
    },
  ];

  void viewMenu(String restaurantName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Viewing menu for $restaurantName')),
    );
    // You can navigate to another screen here using Navigator.push()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FOOD MART",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("FM", style: TextStyle(color: Colors.black)),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(
              "RESTAURENTS",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: restaurantData.length,
                itemBuilder: (context, index) {
                  final restaurant = restaurantData[index];

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        // Image container
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(restaurant['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Restaurant name and rating
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant['name'],
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: List.generate(5, (starIndex) {
                                  return Icon(
                                    Icons.star,
                                    size: 18,
                                    color: starIndex < restaurant['rating']
                                        ? Colors.amber
                                        : Colors.grey,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),

                        // View Menu button
                        InkWell(
                          onTap: () => viewMenu(restaurant['name']),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "VIEW MENU",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
