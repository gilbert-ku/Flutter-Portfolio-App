import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "Hello Gilbert",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
