import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDetailScreen extends StatelessWidget {
  final String backgroundImageUrl;
  final String title;

  const ProjectDetailScreen({
    Key? key,
    required this.backgroundImageUrl,
    required this.title,
  }) : super(key: key);

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
                  stops: [0.5, 1.0],
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
                  const SizedBox(height: 400), // Space for the image
                  // Title
                  Text(
                    title,
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Description
                  Text(
                    'This project is a fully-featured application that allows users to experience a wide range of functionalities. '
                        'The app offers a rich user interface with smooth animations and transitions. The goal of the app is to provide an exceptional user experience.'
                        '\n\n'
                        'The project also supports real-time data synchronization with cloud services, ensuring data integrity and faster responses. '
                        'With a modern tech stack, this app can scale efficiently and manage large amounts of data.',
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
                  Text(
                    'Tech Stack',
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                        label: Text('Flutter'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                      Chip(
                        label: Text('Dart'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                      Chip(
                        label: Text('Firebase'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                      Chip(
                        label: Text('REST API'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                      Chip(
                        label: Text('Google Cloud'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                      Chip(
                        label: Text('Hive DB'),
                        shape: StadiumBorder(), // Rounded shape
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  // Play Store & App Store Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Play Store button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        icon: const Icon(Icons.android),
                        label: const Text('Play Store'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // App Store button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        icon: const Icon(Icons.apple),
                        label: const Text('App Store'),
                      ),
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
