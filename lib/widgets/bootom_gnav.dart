import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: GNav(
        gap: 10,
        backgroundColor: Colors.green,
        color: Colors.white,
        activeColor: Colors.pink,
        tabBackgroundColor: Colors.white,
        padding: const EdgeInsets.all(16),
        tabs: const [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.info, text: "About"),
          GButton(icon: Icons.read_more, text: "Blogs"),
          GButton(icon: Icons.email, text: "Contact Me"),
        ],
        onTabChange: (index) {
          // Add navigation or other functionality for each tab
          print("Navigating to tab index: $index"); // Placeholder
        },
      ),
    );
  }
}
