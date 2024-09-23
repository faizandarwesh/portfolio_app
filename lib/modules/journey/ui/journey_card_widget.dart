import 'package:flutter/material.dart';

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
          Column(
            children: [
              Icon(
                Icons.circle,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 100,
                child: VerticalDivider(
                  width: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Theme.of(context).primaryColor,
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
          Image.network(
            journey['logo'],
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child; // When the image is fully loaded
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return const Center(
                  child: Icon(Icons.error)); // If image fails to load
            },
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
