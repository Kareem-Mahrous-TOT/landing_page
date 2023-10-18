import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_landing_page_widgets/core/routes/router_paths.dart';
import 'package:tot_landing_page_widgets/core/theme/pallete.dart';

import '../components/content_comps/content_button.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(color: black, fontSize: 18),
        ),
      ),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TOTContentButtonMolecule(
              title: "Privacy and Policy",
              onPressed: () {
                context.push(RoutePaths.privacyAndPolicy);
              },
            ),
            SizedBox(
              height: h * 0.01,
            ),
            TOTContentButtonMolecule(
              title: "Terms & Conditions",
              onPressed: () {
                context.push(RoutePaths.termsAndConditions);
              },
            ),
            SizedBox(
              height: h * 0.01,
            ),
            TOTContentButtonMolecule(
              title: "FAQs",
              onPressed: () {
                context.push(RoutePaths.faqs);
              },
            ),
            SizedBox(
              height: h * 0.01,
            ),
            TOTContentButtonMolecule(
              title: "Contact us",
              onPressed: () {
                context.push(RoutePaths.contactUs);
              },
            ),
            SizedBox(
              height: h * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
