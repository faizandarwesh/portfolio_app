import 'package:flutter/material.dart';
import '../privacy-policy/ui/privacy_policy.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor, // Dark background color
        child: Column(
          children: [
            // Drawer Header with Profile
            const UserAccountsDrawerHeader(
              accountName: Text(
                '<Faizan Darwesh>',
                style: TextStyle(
                    color: Color(0xFF6750A4),
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
              leading: const Icon(Icons.home,),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined,),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
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
              leading: const Icon(Icons.settings,),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 16,
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
