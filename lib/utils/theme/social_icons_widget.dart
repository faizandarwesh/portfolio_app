import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants.dart';
import '../helper_methods.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap : (){
              HelperMethods.launchBrowser(AppConstants.emailUrl);
            },
            child: SvgPicture.asset(
              'assets/icons/svg_email.svg',
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
            child: SvgPicture.asset(
              'assets/icons/svg_github.svg',
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
            HelperMethods.launchBrowser(AppConstants.linkedinUrl);
          },
          child: SvgPicture.asset('assets/icons/svg_linkedin.svg',
              width: 40,
              height: 40,
              colorFilter:  ColorFilter.mode(
                  Theme.of(context).iconTheme.color!, BlendMode.srcIn)),
        ),
        const SizedBox(width: 16,),
        GestureDetector(
            onTap : (){
              HelperMethods.launchBrowser(AppConstants.stackOverFlowUrl);
            },
            child: SvgPicture.asset(
              'assets/icons/svg_stackoverflow.svg',
              width: 40,
              height: 40,
              colorFilter:
              ColorFilter.mode( Theme.of(context).iconTheme.color!, BlendMode.srcIn),
            )),
        const SizedBox(width: 16,),
        GestureDetector(
            onTap : (){
              HelperMethods.launchBrowser(AppConstants.upworkUrl);
            },
            child: SvgPicture.asset(
              'assets/icons/svg_upwork.svg',
              width: 40,
              height: 40,
              colorFilter:
              ColorFilter.mode( Theme.of(context).iconTheme.color!, BlendMode.srcIn),
            )),
      ],
    );
  }
}