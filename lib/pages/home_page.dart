import 'package:flutter/material.dart';
import 'package:gku/widgets/landing_page.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add mediaQuery to remove app bar padding
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, // Remove padding for the status bar
        child: LandingPage(),
      ),
    );
  }
}
