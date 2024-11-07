import 'package:flutter/material.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Blog Page",
          style: TextStyle(
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
