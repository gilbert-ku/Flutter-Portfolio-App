import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
      print(
        e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Image
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
                  // fit: BoxFit.cover,
                ),
              ),

              // Intro Text and Social Icons
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Gilbert Kutoto",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Software Engineer",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter Developer",
                          style: GoogleFonts.spicyRice(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Social Icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => _launchURL(
                                Uri.parse(
                                  "https://github.com/gilbert-ku",
                                ),
                                false,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () => _launchURL(
                                Uri.parse(
                                  "https://www.linkedin.com/in/gilbert-kutoto/",
                                ),
                                false,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () => _launchURL(
                                Uri.parse(
                                  "https://x.com/gilbert45dope/",
                                ),
                                false,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.xTwitter,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () => _launchURL(
                                Uri.parse(
                                  "https://www.instagram.com/dadykool_2five4/",
                                ),
                                false,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "Resume",
                                      style: GoogleFonts.spicyRice(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Icon(
                                      Icons.download,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
