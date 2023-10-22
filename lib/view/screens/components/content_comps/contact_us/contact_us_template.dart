import 'package:flutter/material.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

import 'contact_us_button.dart';

class TOTContactUsTemplate extends StatelessWidget {
  const TOTContactUsTemplate({
    super.key,
    this.assetImage,
    this.title,
    this.description,
    this.imageHeight,
    this.imageWidth,
    this.titleColor,
    this.descriptionColor,
    this.onPressedButton,
    this.iconData,
    this.text,
    this.textColor,
    this.onPressedButton1,
    this.iconData1,
    this.text1,
    this.textColor1,
    this.iconColor,
    this.iconColor1,
  });
  final String? assetImage;
  final String? title;
  final String? description;
  final double? imageHeight;
  final double? imageWidth;
  final Color? titleColor;
  final Color? descriptionColor;
  final VoidCallback? onPressedButton;
  final IconData? iconData;
  final String? text;
  final Color? textColor;
  final VoidCallback? onPressedButton1;
  final IconData? iconData1;
  final String? text1;
  final Color? textColor1;
  final Color? iconColor;
  final Color? iconColor1;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          assetImage ?? "assets/tot_icon.png",
          height: imageHeight ?? h * 0.25,
          width: imageWidth ?? w * 0.95,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            Text(
              title ?? "How can we help you?",
              style: context.titleLarge.copyWith(
                color: titleColor ?? Colors.black,
                fontSize: 24,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              description ??
                  "if you're having a problem, we're here to help you so please get in touch with us",
              style: context.bodyLarge.copyWith(
                color: descriptionColor ?? Colors.grey,
                // fontSize: 19,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ContactUsButtonMolecule(
              onPressedButton: onPressedButton,
              iconData: iconData,
              text: text,
              textColor: textColor,
              iconColor: iconColor,
            ),
            ContactUsButtonMolecule(
              onPressedButton: onPressedButton1,
              iconColor: iconColor1,
              iconData: iconData1,
              text: text1,
              textColor: textColor1,
            )
          ],
        ),
      ],
    );
  }
}
