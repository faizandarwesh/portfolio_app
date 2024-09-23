import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JourneyCardWidget extends StatelessWidget {
  final dynamic journey;

  const JourneyCardWidget({
    super.key,
    required this.journey,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            children: [
              Icon(
                Icons.circle,
                color: Color(0xFF6750A4),
              ),
              SizedBox(
                height: 100,
                child: VerticalDivider(
                  width: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xFF6750A4),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  journey['designation'],
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.start,
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: journey['from'],
                      ),
                      const TextSpan(
                        text: ' - ',
                      ),
                      TextSpan(
                        text: journey['to'],
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  journey['type'],
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.start,
                ),
                InkWell(
                  onTap: () async {

                  },
                  child: Text(
                    journey['organization'],
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.start,
                  ),
                ),
                Text(
                  journey['location'],
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
          SvgPicture.asset(
            journey['logo'],
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
