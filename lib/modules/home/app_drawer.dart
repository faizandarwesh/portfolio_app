import 'package:flutter/material.dart';
import '../privacy-policy/ui/privacy_policy.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF1D1D1D), // Dark background color
        child: Column(
          children: [
            // Drawer Header with Profile
            const UserAccountsDrawerHeader(
              accountName: Text(
                '<Faizan Darwesh>',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Agustina',
                    fontWeight: FontWeight.w700),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/intro_thumbnail.png'), // Profile Image
              ),
              decoration: BoxDecoration(
                color: Colors.transparent, // No background color
              ),
            ),
            // Drawer Menu Items
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined, color: Colors.white),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicy()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              onTap: () {
              },
            ),

          ],
        ),
      ),
    );
  }
}
