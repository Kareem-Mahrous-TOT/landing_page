import 'package:flutter/material.dart';

class TotTryNowOrganinsm extends StatelessWidget {
  const TotTryNowOrganinsm({
    super.key,
    required this.productImage,
    required this.onPressed,
    this.tryNowColor,
    this.buttonChildrenColor,
    this.buttonColor,
    required this.productName,
  });
  final String? productImage;
  final String productName;
  final Color? tryNowColor;
  final Color? buttonChildrenColor;
  final Color? buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: h * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: h * 0.19,
              width: w * 0.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.network(
                  height: h * 0.15,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  productImage ?? "",
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      height: h * 0.2,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                      "https://ps.w.org/replace-broken-images/assets/icon-256x256.png",
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,
                      style: TextStyle(
                          color: tryNowColor ?? Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor ?? Colors.black),
                    child: Row(
                      children: [
                        Text(
                          "Order Now",
                          style: TextStyle(
                              color: buttonChildrenColor ?? Colors.white),
                        ),
                        Icon(Icons.play_arrow,
                            color: buttonChildrenColor ?? Colors.white)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
