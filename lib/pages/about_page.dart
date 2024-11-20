import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/backround_image.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      "About Me",
                      style: GoogleFonts.domine(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                        horizontal: 30,
                      ),
                      child: Text(
                        "I am a Full-Stack Developer and Flutter Specialist with over two years of experience, focused on building innovative, user-centered solutions through continuous learning and collaboration",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Skills",
                      style: GoogleFonts.domine(
                        textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              primary: false,
              shrinkWrap: true, // Prevent infinite height
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: _buildSkillCards(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
                right: 30,
                left: 30,
              ),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.next_plan_sharp),
                label: Text(
                  "C h e c k  M y  P r o j e c t s",
                  style: GoogleFonts.domine(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.pink,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  iconColor: Colors.pink,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildSkillCards() {
    const skills = [
      {'image': 'assets/images/figma.png', 'name': 'Figma'},
      {'image': 'assets/images/flutter.png', 'name': 'Flutter'},
      {'image': 'assets/images/nextjs.png', 'name': 'Next.JS'},
      {'image': 'assets/images/react.png', 'name': 'React.JS'},
      {'image': 'assets/images/python.png', 'name': 'Python'},
      {'image': 'assets/images/django.png', 'name': 'Django'},
      {'image': 'assets/images/tailwind.png', 'name': 'Tailwind'},
      {'image': 'assets/images/firebase.png', 'name': 'Firebase'},
      {'image': 'assets/images/mysql.png', 'name': 'MySQL'},
    ];

    return skills.map((skill) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Image.asset(
                  skill['image']!,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.broken_image,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  skill['name']!,
                  style: GoogleFonts.domine(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
