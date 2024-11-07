import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "About Me",
          style: TextStyle(
            fontSize: 30.0,
            
          ),
        ),
      ),
    );
  }
}
