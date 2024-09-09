import 'package:flutter/material.dart';
import 'package:portfolio_app/modules/projects/ui/projects_card.dart';

import '../../../data/data.dart';

class ProjectListingScreen extends StatelessWidget {
  const ProjectListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = greeting['projects'] as List<dynamic>;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Projects",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];

                  return ProjectsCard(
                    title: project['title'],
                    description: project['description'],
                    imageUrl: project['image_url'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
