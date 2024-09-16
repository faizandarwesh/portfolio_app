import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
