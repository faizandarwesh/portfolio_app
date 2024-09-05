import 'package:url_launcher/url_launcher.dart';

class HelperMethods {

  static launchBrowser(url, {LaunchMode? mode}) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: mode ?? LaunchMode.platformDefault);
    } else {
      throw "Could not launch $url";
    }
  }

}