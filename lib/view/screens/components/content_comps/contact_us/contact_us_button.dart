import 'package:flutter/material.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

class ContactUsButtonMolecule extends StatelessWidget {
  const ContactUsButtonMolecule({
    super.key,
    this.onPressedButton,
    this.iconData,
    this.text,
    this.textColor,
    this.iconColor,
  });
  final VoidCallback? onPressedButton;
  final IconData? iconData;
  final String? text;
  final Color? textColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: h * 0.2,
      width: w * 0.4,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressedButton,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData ?? Icons.call,
              color: iconColor,
              size: 44,
            ),
            Text(
              text ?? "Call us",
              style: context.titleLarge.copyWith(
                  fontSize: 20,
                  color: textColor ?? Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
