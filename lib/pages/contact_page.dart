import 'package:flutter/material.dart';
import 'package:gku/widgets/contact/contact_form.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Colors.green[100],
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/contact_grid.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  // color: Colors.green[100],
                  child: Column(
                    children: [
                      Text(
                        "Let’s Work Together!",
                        style: GoogleFonts.dancingScript(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                
                
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Do you have a project in mind? I’d love to hear from you! Contact me for collaborations, freelance work, or general inquiries.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Center(
                          child: Text(
                            "Fill out the form below, and I’ll reply shortly.",
                            style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ContactForm()
        ],
      ),
    );
  }
}
