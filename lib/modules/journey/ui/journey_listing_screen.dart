import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/modules/journey/ui/journey_card_widget.dart';
import 'package:timelines/timelines.dart';
import '../../../data/data.dart';

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
              // Timeline.tileBuilder(
              //   shrinkWrap: true,
              //   builder: TimelineTileBuilder.fromStyle(
              //     contentsAlign: ContentsAlign.alternating,
              //     contentsBuilder: (context, index) => Padding(
              //       padding: const EdgeInsets.all(24.0),
              //       child: Text('Timeline Event $index'),
              //     ),
              //     itemCount: 10,
              //   ),),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.reverse,
              oppositeContentsBuilder: (context, index) {
                final role = journey[index]['role'];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    role,
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400)
                  ),
                );
              },
              contentsBuilder: (context, index) {
                final title = journey[index]['title'];
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700)
                    ),
                  ),
                );
              },
              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: journey.length,
            ),
          ),

          // ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemCount: journey.length,
                //   itemBuilder: (BuildContext context, int index) {
                //     final data = journey[index];
                //
                //     return JourneyCardWidget(
                //       journey: data,
                //     );
                //   },
                // )
            ],
          ),
        ),
      ),
    );
  }
}
