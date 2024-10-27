import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        
        child: Container(
          // decorate/ style the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green,
          ),
          
          // add padding to the container
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            
            child: GNav(
              // add style Gnav
              gap: 10,
              backgroundColor: Colors.green,
              color: Colors.white,
              activeColor: Colors.pink,
              tabBackgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
              tabs: [
                GButton(icon: Icons.home,
                text: "Home"
                ),
                GButton(icon: Icons.info,
                text: "About",
                ),
                GButton(icon: Icons.read_more,
                text: "Blogs",
                ),
                GButton(icon: Icons.email,
                text: "Contact Me",),
                // GButton(icon: Icons.home),
            
              ]
              ),
          ),
        ),
      ),
    );
  }
}