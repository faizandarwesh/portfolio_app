import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/modules/home/app_drawer.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset('assets/icons/menu.svg',
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).iconTheme.color!, BlendMode.srcIn))),
        backgroundColor: Colors.transparent,
        actions: const [
          ThemeToggleButton(),
        ],
        centerTitle: true,
        title: const Text(
          'FD',
          style: TextStyle(
              fontSize: 24,
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
        selectedIconTheme: const IconThemeData(color: Color(0xFF6750A4)),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emoji_people,
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'Intro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Theme.of(context).iconTheme.color),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation_sharp,
                color: Theme.of(context).iconTheme.color),
            label: 'Journey',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.handyman, color: Theme.of(context).iconTheme.color),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Theme.of(context).iconTheme.color),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
