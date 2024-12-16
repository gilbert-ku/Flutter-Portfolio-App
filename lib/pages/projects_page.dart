import 'package:flutter/material.dart';

// import 'package:go_router/go_router.dart';
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Center(child: Text('Projects')),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text('Project 1'),
                    subtitle: Text('Description of Project 1'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Project 2'),
                    subtitle: Text('Description of Project 2'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Project 3'),
                    subtitle: Text('Description of Project 3'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
