import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // profile image
              Container(
                height: height * .4,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  "assets/images/profile.jpeg",
                  fit: BoxFit.contain,
                ),
              ),

              // intro text
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Container(
                  height: height * .4,
                  width: width,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Gilbert Kutoto",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Software Engineer",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          "Flutter Developer",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        // icons
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                print("github");
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.xTwitter,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
