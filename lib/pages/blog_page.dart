import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Center(
      child: Container(
        color: Colors.green[200],
        child: Center(
          child: Text(
            "Blog Posts",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    ));
  }
}
