import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/about_gilly.png",
                ),
              ),
              Container(
                color: Colors.pink[200],
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Gilbert Kutoto",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Software Enineer",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        " Download Resume",
                      ),
                      icon: Icon(Icons.download),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
