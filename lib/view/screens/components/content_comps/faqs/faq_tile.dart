import 'package:flutter/material.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

import 'faq_record.dart';

class FaqsTile extends StatelessWidget {
  const FaqsTile({
    super.key,
    required this.model,
    this.answerColor,
    this.questionColor,
    this.borderColor,
    this.cardColor,
    this.initiallyExpanded = false,
  });

  final FaqRecord model;
  final Color? answerColor;
  final Color? questionColor;
  final Color? cardColor;
  final Color? borderColor;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: cardColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: ExpansionTile(
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          childrenPadding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          title: Text(
            model.question,
            style: context.bodyMedium.copyWith(
                color: questionColor ?? Colors.black,
                fontWeight: FontWeight.w500),
          ),
          initiallyExpanded: initiallyExpanded,
          children: [
            Text(model.answer,
                style: context.bodyMedium.copyWith(
                  color: answerColor ?? Colors.grey,
                )),
          ],
        ),
      ),
    );
  }
}
