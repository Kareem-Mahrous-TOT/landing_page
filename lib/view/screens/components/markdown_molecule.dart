import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownMolecule extends StatelessWidget {
  const MarkdownMolecule({
    super.key,
    required this.data,
    this.selectable = false,
    this.controller,
    this.padding,
  });
  final String data;
  final bool selectable;
  final ScrollController? controller;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: padding ?? EdgeInsets.zero,
      data: data,
      controller: controller,
      selectable: selectable,
    );
  }
}
