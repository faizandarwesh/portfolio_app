import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../data/data.dart';
import 'journey_card_widget.dart';

class JourneyListingScreen extends StatelessWidget {
  const JourneyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final journey = greeting['journey'] as List<dynamic>;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Journey",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Lottie.asset('assets/raw/mobile_developer.json',
                    height: 350),
              ),
              const SizedBox(
                height: 16,
              ),
          ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: journey.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = journey[index];

                    return JourneyCardWidget(
                      journey: data,
                    );
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
