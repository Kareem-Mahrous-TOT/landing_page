import 'package:flutter/material.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

class TOTContentButtonMolecule extends StatelessWidget {
  const TOTContentButtonMolecule({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    this.titleColor,
    this.arrowColor,
    required this.title,
    required this.onPressed,
  });
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? arrowColor;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: height ?? h * 0.05,
        width: width ?? w * 0.9,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.labelLarge
                    .copyWith(color: titleColor ?? Colors.black),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: arrowColor ?? Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
