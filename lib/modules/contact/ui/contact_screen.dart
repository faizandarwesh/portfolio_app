import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "CONTACT",
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
