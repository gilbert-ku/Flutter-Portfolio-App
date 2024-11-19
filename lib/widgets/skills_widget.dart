import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
        top: 3,
        bottom: 0,
      ),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(5),
            // color: Colors.green[100],
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      "assets/images/figma.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Figma",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // flutter
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(5),
            // color: Colors.green[100],
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      "assets/images/flutter.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Flutter",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // nextjs

          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(5),
            // color: Colors.green[100],
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      "assets/images/nextjs.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Next.JS",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // react

          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(5),
            // color: Colors.green[100],
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      "assets/images/react.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "React.JS",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // python
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(5),
            // color: Colors.green[100],
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Image.asset(
                      "assets/images/python.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Python",
                      style: GoogleFonts.domine(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[200],
            child: const Text('Django'),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: const Text("Tailwin"),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[200],
            child: const Text('FireBase'),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[200],
            child: const Text('MySQL'),
          ),
        ],
      ),
    );
  }
}
