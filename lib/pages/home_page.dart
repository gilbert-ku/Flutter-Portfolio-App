import 'package:flutter/material.dart';
import 'package:gku_portfolio_app/widgets/bootom_gnav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Hello Gilbert"),
      bottomNavigationBar: NavBar(),
    );
  }
}