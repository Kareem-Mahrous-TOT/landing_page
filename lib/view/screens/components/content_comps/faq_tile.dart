import 'package:flutter/material.dart';

class FaqsTile extends StatelessWidget {
  const FaqsTile(
      {super.key,
      required this.itemCount,
      required this.model,
      this.answerColor,
      this.questionColor,
      this.borderColor,
      this.cardColor});
  final int itemCount;
  final List<FaqModel> model;
  final Color? answerColor;
  final Color? questionColor;
  final Color? cardColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) => Padding(
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
                model[index].question,
                style: TextStyle(
                    color: questionColor ?? Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              initiallyExpanded: index == 0 ? true : false,
              children: [
                Text(
                  model[index].answer,
                  style: TextStyle(
                    color: answerColor ?? Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FaqModel {
  final String question;
  final String answer;

  FaqModel({
    required this.question,
    required this.answer,
  });
}
