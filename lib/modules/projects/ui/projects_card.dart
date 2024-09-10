import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/theme/theme_provider.dart';

class ProjectsCard extends ConsumerWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectsCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final themeNotifier = ref.watch(themeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Card(
        elevation: 2,
        clipBehavior: Clip.hardEdge,
       shape: const RoundedRectangleBorder( borderRadius: BorderRadius.only(
         topLeft: Radius.circular(40),
         bottomRight: Radius.circular(40),
       ),),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            border: Border.all(
              width: 2,
              color: themeNotifier.isDarkMode ? Colors.white : Colors.black,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 16,),
              Image.asset(imageUrl,width: 200, height: 200,),
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
               Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
