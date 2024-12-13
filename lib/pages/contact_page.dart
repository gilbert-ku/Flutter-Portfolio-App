import 'package:flutter/material.dart';
import 'package:gku/widgets/contact/contact_form.dart';
import 'package:gku/widgets/contact/contact_social_handle.dart';
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

              // handles contacts social handle
              ContactSocialHandle(),

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
