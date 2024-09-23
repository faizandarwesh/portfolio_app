import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/theme/social_icons_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Contact",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 32,),
            const Text(
              "Let's collaborate and create the next big thing!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Text(
              'Get in Touch',
              style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF6750A4),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Lottie.asset('assets/raw/contact_animation.json',
              ),
            ),
            const SizedBox(height: 20),
            const SocialIconsWidget(),
          ],
        ),
      ),
    );
  }
}
