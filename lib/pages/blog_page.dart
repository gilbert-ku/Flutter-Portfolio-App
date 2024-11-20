import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/backround_image.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                
                child: Positioned(
                  bottom: 30,
                  // left: 0,
                  // right: 0,
                  // top: 0,
                  child: Column(
                    children: [
                      Text(
                        "About Me",
                        style: GoogleFonts.domine(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "With over two years of experience in software development, I specialize in Flutter and thrive on learning, collaboration, and creating impactful solutions.",
                        style: GoogleFonts.domine(
                          textStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "Skill",
                        style: GoogleFonts.domine(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
