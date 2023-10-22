import 'package:flutter/material.dart';

import 'faq_record.dart';
import 'faq_tile.dart';

class FaqsTemplate extends StatelessWidget {
  const FaqsTemplate({
    super.key,
    required this.list,
  });
  final List<FaqRecord> list;

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return FaqsTile(model: list[index]);
        },
      ),
    );
  }
}
