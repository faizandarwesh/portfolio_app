import 'package:flutter/material.dart';
import 'package:portfolio_app/modules/intro/ui/intro_screen.dart';

import '../../contact/ui/contact_screen.dart';
import '../../journey/ui/journey_listing_screen.dart';
import '../../projects/ui/project_listing_screen.dart';
import '../../skills/ui/skill_listing_screen.dart';
import 'theme_toggle_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const IntroScreen(),
    const ProjectListingScreen(),
    const JourneyListingScreen(),
    const SkillListingScreen(),
    const ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor('#040416'),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          ThemeToggleButton(),
        ],
        centerTitle: true,
        title: const Text(
          'FD',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'Agustina',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people),
            label: 'Intro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation_sharp),
            label: 'Journey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handyman),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
