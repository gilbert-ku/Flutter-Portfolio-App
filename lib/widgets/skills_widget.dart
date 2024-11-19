import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: const Text("Figma"),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[200],
            child: const Text('Flutter'),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: const Text("Next.JS"),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[200],
            child: const Text('ReactJS'),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: const Text("Python"),
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
