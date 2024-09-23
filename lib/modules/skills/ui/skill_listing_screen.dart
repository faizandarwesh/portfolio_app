import 'package:flutter/material.dart';
import 'package:portfolio_app/modules/skills/ui/skills_card.dart';

import '../../../data/data.dart';

class SkillListingScreen extends StatelessWidget {
  const SkillListingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final skills = greeting['skills'] as List<dynamic>;

    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16,),
          const Text(
            "Skills",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Transforming ideas into seamless digital experiences.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'What I can do?',
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF6750A4),
                fontSize: 24
            ),),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  final skill = skills[index];

                  return SkillsCard(
                    title: skill['title'],
                    imageUrl: skill['image_url'],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
