import 'package:flutter/material.dart';

class SkillListingScreen extends StatelessWidget {
  const SkillListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "SKILLS",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          ),
          Center(
            child: Text(
              "COMING SOON!!!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }
}
