import 'package:flutter/material.dart';
import 'package:gku/widgets/resume_btn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  // function to handle urls
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/profile.jpeg",
                // "assets/images/about_gilly.png",
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // color: Colors.green[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      
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
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
                                color: Colors.pink,
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
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                        
                        ResumeBtn()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}