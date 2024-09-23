import 'package:flutter/material.dart';

class ProjectMockupScreen extends StatelessWidget {
  final String imageUrl;

  const ProjectMockupScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          InteractiveViewer(
            panEnabled: true,
            scaleEnabled: true,
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 0.8,
            maxScale: 4.0,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.grey,
                )),
          )
        ],
      ),
    );
  }
}
