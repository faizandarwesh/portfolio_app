import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/utils/app_constants.dart';
import 'package:portfolio_app/utils/helper_methods.dart';
import '../../../data/data.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset('assets/raw/waving_animation.json'),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius : BorderRadius.circular(135),
                child: Image.asset(
                  'assets/images/intro_thumbnail.png',
                  height: 300,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                greeting['username'],
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedTextKit(
                totalRepeatCount: 3,
                animatedTexts: greeting['designations'].map<TypewriterAnimatedText>((designation) {
                  return TypewriterAnimatedText(
                      designation,
                      speed: const Duration(milliseconds: 100),
                      textStyle: const TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Agne',
                      ),
                      textAlign: TextAlign.center
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap : (){
                        HelperMethods.launchBrowser(AppConstants.linkedinUrl);
                      },
                      child: SvgPicture.asset(
                    'assets/icons/linkedin_icon.svg',
                    width: 40,
                    height: 40,
                    colorFilter:
                         ColorFilter.mode( Theme.of(context).iconTheme.color!, BlendMode.srcIn),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap : (){
                      HelperMethods.launchBrowser(AppConstants.githubUrl);
                    },
                    child: SvgPicture.asset('assets/icons/github_icon.svg',
                        width: 40,
                        height: 40,
                        colorFilter:  ColorFilter.mode(
                            Theme.of(context).iconTheme.color!, BlendMode.srcIn)),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
