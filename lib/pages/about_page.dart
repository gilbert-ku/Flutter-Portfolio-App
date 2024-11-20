import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                    fit: BoxFit.fill,
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
                        "I am a FullStack Software and Flutter Developer. With over two years of experience in software development, I specialize in Flutter and thrive on learning, collaboration, and creating impactful solutions.",
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
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 50,),
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
