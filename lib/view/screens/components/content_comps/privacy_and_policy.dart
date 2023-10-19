import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyAndPolicy extends StatelessWidget {
  PrivacyAndPolicy({super.key});

  final ScrollController controller = ScrollController(initialScrollOffset: 0);

  Future<String> getMarkDown() async {
    String data = await rootBundle.loadString('assets/markdown_test_page.md');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward),
        onPressed: () => controller.animateTo(0,
            duration: const Duration(seconds: 1), curve: Curves.easeOut),
      ),
      appBar: AppBar(
        title: const Text("Privacy and Policy"),
      ),
      body: FutureBuilder(
        future: getMarkDown(),
        builder: (context, snapshot) {
          // log("controller.offset:: ${controller.offset.toString()}");
          if (snapshot.data != null) {
            log(controller.toString());
            return Markdown(
              controller: controller,
              selectable: true,
              data: snapshot.data!,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
