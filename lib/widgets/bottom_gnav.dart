import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:gku/widgets/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final Widget child;

  const NavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child, // Your main content goes here
      bottomNavigationBar: Container(
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
            switch (index) {
              case 0:
                context.go("/"); // Navigate to Home
                break;
              case 1:
                context.go("/about"); // Navigate to About
                break;
              case 2:
                context.go("/blogs"); // Navigate to Blogs
                break;
              case 3:
                context.go("/contact"); // Navigate to Contact
                break;
            }
          },
        ),
      ),
    );
  }
}
