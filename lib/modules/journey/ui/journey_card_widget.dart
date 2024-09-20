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
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 2,
        margin: EdgeInsets.zero,
        child: ListTile(
          leading: Image.asset(
            journey['image'],
            width: 50,
            height: 50,
          ),
          title: Text(
            journey['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
          subtitle: Column(
            children: [
              Text(
                journey['duration'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                journey['role'],
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
