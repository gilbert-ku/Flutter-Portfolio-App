import 'package:flutter/material.dart';
import 'package:gku/widgets/bootom_gnav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello Gilbert",
          style: TextStyle(fontSize: 30),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
