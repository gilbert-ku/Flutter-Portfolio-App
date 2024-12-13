import 'package:flutter/material.dart';
import 'package:gku/widgets/contact/contact_form.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _launchURL(Uri uri, bool inApp) async {
    try {
      if (await canLaunchUrl(uri)) {
        if (inApp) {
          await launchUrl(
            uri,
            mode: LaunchMode.inAppWebView,
          );
        } else {
          await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
        }
      }
    } catch (e) {
      // Log the error or handle it as needed
      debugPrint('Error launching URL: $e');
      // Return a more descriptive error object or handle the error gracefully
      // return 'Failed to launch URL. Please try again later.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      backgroundColor: Colors.green[100],
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/contact_grid.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 150,
                      width: double.infinity,
                      // color: Colors.green[100],
                      child: Column(
                        children: [
                          Text(
                            "Let’s Work Together!",
                            style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Do you have a project in mind? I’d love to hear from you! Contact me for collaborations, freelance work, or general inquiries.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.domine(
                                  // style: GoogleFonts.dancingScript(
                                  textStyle: TextStyle(
                                    fontSize: 17,
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

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Contact and Email
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // call
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => _launchURL(
                                    Uri.parse(
                                      "https://www.linkedin.com/in/gilbert-kutoto/",
                                    ),
                                    false,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.phone,
                                    size: 17,
                                    color: Colors.pink,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    "+254 726 545 820",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 20), // Spacing between rows

                            // email
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => _launchURL(
                                    Uri.parse(
                                      "https://www.linkedin.com/in/gilbert-kutoto/",
                                    ),
                                    false,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.message,
                                    size: 17,
                                    color: Colors.pink,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    "gilbert45ku@gmail.com",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // Right side: WhatsApp and LinkedIn Icons
                        // whatsapp icon
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () => _launchURL(
                                      Uri.parse(
                                        "https://www.linkedin.com/in/gilbert-kutoto/",
                                      ),
                                      false,
                                    ),
                                    icon: FaIcon(
                                      FontAwesomeIcons.whatsapp,
                                      size: 20,
                                      color: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: 10), // Spacing between rows

                              // linkedin
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () => _launchURL(
                                      Uri.parse(
                                        "https://www.linkedin.com/in/gilbert-kutoto/",
                                      ),
                                      false,
                                    ),
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      size: 20,
                                      color: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              // text to field the form
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Fill out the form below, and I’ll reply shortly.",
                  style: GoogleFonts.dancingScript(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              // form
              ContactForm(),

              // location
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => _launchURL(
                      Uri.parse(
                        "https://www.linkedin.com/in/gilbert-kutoto/",
                      ),
                      false,
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.locationPin,
                      size: 17,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Nairobi, Kenya",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
