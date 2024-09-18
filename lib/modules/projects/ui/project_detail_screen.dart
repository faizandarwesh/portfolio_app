import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectDetailScreen extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;
  final String description;

  const ProjectDetailScreen({
    super.key,
    required this.backgroundImageUrl,
    required this.title,
    required this.description
  });

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
          // Gradient overlay for better text visibility
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black87],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Scrollable content
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height /
                          2), // Space for the image
                  // Title
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 32,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  // Description
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Tech Stack Heading
                  const Text(
                    'Tech Stack',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w700
                    ),
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
    );
  }
}
