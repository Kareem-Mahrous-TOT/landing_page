import 'package:flutter/material.dart';

import 'faq_tile.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaqsTile(
                itemCount: 10,
                model: List.generate(
                  12,
                  (index) => FaqModel(
                      question: "Question",
                      answer:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
