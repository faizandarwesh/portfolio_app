import 'package:flutter/material.dart';
import '../privacy-policy/ui/privacy_policy.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'FD',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Agustina',
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            title: InkWell(
              borderRadius: BorderRadius.circular(5.0),
              child: const  Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.privacy_tip),
                    SizedBox(width: 20,),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
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
        ],
      ),
    );
  }
}
