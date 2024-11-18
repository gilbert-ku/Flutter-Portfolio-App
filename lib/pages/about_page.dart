import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Column(
          children: [
            Stack(
              children: [
                // Background image container
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/about_gilly.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                // Gradient overlay to create a blend effect on the image
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        // const Color.fromARGB(246, 34, 34, 34),
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),

                // Centered text
                Positioned(
                  bottom: MediaQuery.of(context).size.height *
                      0.1, // Adjusts bottom margin dynamically (5% of screen height)
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "About Me",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.playfairDisplay(
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: Text(
                              "I have more than two year of experience in software development and solutions. I am passionate about software development, always eager to learn new concepts, and possess a collaborative spirit, with a focus on detail and leadership in developing solutions that meet organizational and personal objectives.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.playfairDisplay(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
