import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path/path.dart' as p;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String resumeUrl =
      "https://drive.google.com/file/d/16DhIr0zTp4pHMLidXpdRvTEEj4-d9EPw/view?usp=sharing";

// function to handle file download
  void downloadFile(BuildContext context) async {
    final status = await Permission.storage.request();

    if (status.isGranted) {
      final dir = await getExternalStorageDirectory();
      if (dir != null) {
        String saveName = "gilbert_cv.pdf";
        String savePath = p.join(dir.path, saveName);

        try {
          await Dio().download(
            resumeUrl,
            savePath,
            onReceiveProgress: (received, total) {
              if (total != -1) {
                print("${(received / total * 100).toStringAsFixed(0)}%");
              }
            },
          );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("File Downloaded"),
            ),
          );
        } catch (e) {
          print("Download failed: ${e.toString()}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Download failed: ${e.toString()}"),
            ),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Permission Denied!"),
        ),
      );
    }
  }

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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Image
              Container(
                height: height /3,
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
                  height: height /2,
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
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              
                            ),
                            onPressed: () {
                              downloadFile(context);
                            },
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
