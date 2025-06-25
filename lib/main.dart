import 'package:flutter/material.dart';

import 'package:foodmart/splashscreen.dart';

void main() {
  runApp(const MYAPP());
}

class MYAPP extends StatefulWidget {
  const MYAPP({super.key});

  @override
  State<MYAPP> createState() => _MYAPPState();
}

class _MYAPPState extends State<MYAPP> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
