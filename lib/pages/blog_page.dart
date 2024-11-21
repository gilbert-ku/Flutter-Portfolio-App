import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.green[50],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "W e l c o m e   T o   M y   B l o g s   P a g e",
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript(
                textStyle: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
