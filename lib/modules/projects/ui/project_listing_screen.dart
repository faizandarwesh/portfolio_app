import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_app/modules/projects/ui/project_listing_card.dart';
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
              child: MasonryGridView.builder(
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return InkWell(
                    child: ProjectListingCard(
                        project: project,
                        title: project['title'],
                        description: project['description'],
                        imageUrl: project['image_url'],
                        backgroundImageUrl: project['background_image_url'],
                        rating: project['rating']),
                  );
                },
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
