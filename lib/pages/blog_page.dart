import 'package:flutter/material.dart';
import 'package:gku/widgets/skills_widget.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "assets/images/backround_image.png",
                  ),
                  fit: BoxFit.contain,
                )),
                child: Text(
                  "image",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: SkillsWidget(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "check my Projects",
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
