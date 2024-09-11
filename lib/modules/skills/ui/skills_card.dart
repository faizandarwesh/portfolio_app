import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const SkillsCard({
    required this.title,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(imageUrl,width: 150,height: 150,),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(title,
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
