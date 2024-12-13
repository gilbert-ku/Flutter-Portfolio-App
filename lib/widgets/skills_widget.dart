import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SkillCards extends StatelessWidget {
  const SkillCards({super.key});

  List<Widget> _buildSkillCards() {
    const skills = [
      {
        'image': 'assets/images/figma.png',
        'name': 'Figma',
        'description':
            'I use Figma to design user interfaces and create interactive prototypes for web and mobile applications, collaborating with team members in real time.'
      },
      {
        'image': 'assets/images/flutter.png',
        'name': 'Flutter',
        'description':
            'I use Flutter to develop cross-platform mobile applications with a single codebase, ensuring a consistent and smooth user experience on iOS and Android.'
      },
      {
        'image': 'assets/images/JavaScript.png',
        'name': 'JavaScript',
        'description':
            'I use JavaScript to create dynamic and interactive web applications, handling both client-side functionality and server-side logic with frameworks like Node.js.'
      },
      {
        'image': 'assets/images/Typescript.png',
        'name': 'TypeScript',
        'description':
            'I use TypeScript to write scalable and maintainable code for complex applications, benefiting from static typing and enhanced developer tools.'
      },
      {
        'image': 'assets/images/nextjs.png',
        'name': 'Next.JS',
        'description':
            'I use Next.js to build fast and optimized web applications with features like server-side rendering and API routes.'
      },
      {
        'image': 'assets/images/react.png',
        'name': 'React.JS',
        'description':
            'I use React.js to create reusable UI components and manage state effectively, building dynamic and responsive user interfaces.'
      },
      {
        'image': 'assets/images/python.png',
        'name': 'Python',
        'description':
            'I use Python for backend development, and automation tasks, leveraging its simplicity and rich ecosystem.'
      },
      {
        'image': 'assets/images/django.png',
        'name': 'Django',
        'description':
            'I use Django to build secure and scalable backend services and APIs, taking advantage of its built-in features like ORM and authentication.'
      },
      {
        'image': 'assets/images/tailwind.png',
        'name': 'Tailwind',
        'description':
            'I use Tailwind CSS to rapidly style my web applications with utility-first classes, maintaining consistent design without writing custom CSS.'
      },
      {
        'image': 'assets/images/firebase.png',
        'name': 'Firebase',
        'description':
            'I use Firebase for real-time databases, user authentication, and serverless backend functions, simplifying mobile and web app development.'
      },
      {
        'image': 'assets/images/mysql.png',
        'name': 'MySQL',
        'description':
            'I use MySQL to manage and query relational databases, storing structured data for web applications efficiently.'
      }
    ];

    return skills.map((skill) {
      return Container(
        
        height: 300,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                skill['image']!,
                height: 70,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.broken_image,
                  size: 50,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                skill['name']!,
                style: GoogleFonts.domine(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                skill['description']!,
                textAlign: TextAlign.center,
                style: GoogleFonts.domine(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: _buildSkillCards(),
        options: CarouselOptions(
          height: 300,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
