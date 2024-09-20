import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectDetailScreen extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String description;
  final dynamic project;

  const ProjectDetailScreen(
      {super.key,
      required this.backgroundImageUrl,
      required this.title,
      required this.project,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image with Hero animation
          Hero(
            tag: backgroundImageUrl,
            child: Image.network(
              backgroundImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Scrollable content
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height /
                          2), // Space for the image
                  Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0))),
                    elevation: 2,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            project['title'],
                            style: const TextStyle(
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 20),
                          // Description
                          Text(
                            project['description'],
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          if (project['mockups'] != null) ...[
                            if (project['mockups']['android'] !=
                                null) ...[
                              const Text(
                                'Android',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 250,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: project['mockups']
                                          ['android']
                                      .length,
                                  itemBuilder: (context, index) {
                                    final image = project['mockups']
                                        ['android'][index];
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(image),
                                    );
                                  },
                                ),
                              ),
                            ],
                            if (project['mockups']['ios'] !=
                                null) ...[
                              const SizedBox(
                                height: 24,
                              ),
                              const Text(
                                'iOS',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 250,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: project['mockups']['ios']
                                      .length,
                                  itemBuilder: (context, index) {
                                    final image = project['mockups']
                                        ['ios'][index];
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(image),
                                    );
                                  },
                                ),
                              ),
                            ]
                          ],
                          const SizedBox(
                            height: 16,
                          ),

                          const SizedBox(height: 30),
                          // Tech Stack Heading
                          const Text(
                            'Tech Stack',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          // Tech Stack Chips
                          // Tech Stack Chips
                          const Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              Chip(
                                label: Text(
                                  'Flutter',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                              Chip(
                                label: Text(
                                  'Dart',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                              Chip(
                                label: Text(
                                  'Firebase',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                              Chip(
                                label: Text(
                                  'REST API',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                              Chip(
                                label: Text(
                                  'Google Cloud',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                              Chip(
                                label: Text(
                                  'Hive DB',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                shape: StadiumBorder(), // Rounded shape
                              ),
                            ],
                          ),

                          const SizedBox(height: 30),
                          // Play Store & App Store Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('assets/icons/app_store.svg'),
                              SvgPicture.asset('assets/icons/play_store.svg')
                            ],
                          ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
