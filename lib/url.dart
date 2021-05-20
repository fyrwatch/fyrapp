import 'package:url_launcher/url_launcher.dart';

void launchgit() async => await canLaunch("https://github.com/fyrwatch")
    ? await launch("https://github.com/fyrwatch")
    : throw 'Could not launch url';
void launchmail() async => await canLaunch("mailto:contact.fyrwatch@gmail.com")
    ? await launch("mailto:contact.fyrwatch@gmail.com")
    : throw 'Could not launch url';
