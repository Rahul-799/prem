import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  // Sample data (can be replaced dynamically)
  String restaurantName = "Spicy Spoon";
  String ownerName = "Rahul Manche";
  String phoneNumber = "+91 9876543210";
  String email = "spicy@foodmart.com";
  String type = "VEG / NON-VEG";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'FOOD MART',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "PERSONAL INFORMATION",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 30),

            // Black Square Icon
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/MAGES/logo1.png'),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 30),

            // Info Boxes
            _infoBox("Full Name", restaurantName),

            const SizedBox(height: 15),

            _infoBox("Delivery Address", ownerName),

            const SizedBox(height: 15),

            _infoBox("Phone Number", phoneNumber),
            const SizedBox(height: 15),

            _infoBox("Email", email),
            const SizedBox(height: 15),

            _infoBox("Additional Notes ", type),

            const SizedBox(height: 30),

            // Edit Button
          ],
        ),
      ),
    );
  }

  // Reusable static info box
  Widget _infoBox(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label :",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
