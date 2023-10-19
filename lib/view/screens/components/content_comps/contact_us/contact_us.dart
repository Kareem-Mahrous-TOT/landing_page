import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_us_template.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact us"),
        centerTitle: true,
      ),
      body: TOTContactUsTemplate(
        assetImage: "assets/tot_icon.png",
        titleLarge: "How can we help you?",
        description:
            "if you're having a problem, we're here to help you so please get in touch with us",
        onPressedButton1: () {
          final Uri email = Uri(
            scheme: 'mailto',
            path: 'info@totplatform.com',
            queryParameters: <String, String>{
              'subject':
                  Uri.encodeComponent('Example Subject & Symbols are allowed!'),
            },
          );
          launchUrl(email);
        },
        onPressedButton: () async {
          final Uri dialLaunch = Uri(
            scheme: 'tel',
            path: '99999',
            // queryParameters: <String, String>{
            //   'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
            // },
          );
          launchUrl(dialLaunch);
        },
        iconData1: Icons.email_outlined,
        text1: "Email us",
      ),
    );
  }
}
