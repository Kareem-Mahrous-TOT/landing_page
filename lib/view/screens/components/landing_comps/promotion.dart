import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

class TOTPromotionOrganism extends StatelessWidget {
  const TOTPromotionOrganism({
    super.key,
    this.onPressed,
    this.buttonChildrenColor,
    this.buttonColor,
    this.hasButton = false,
    this.hasBanner = false,
    required this.productImage,
  });
  final VoidCallback? onPressed;
  final Color? buttonChildrenColor;
  final Color? buttonColor;
  final String? productImage;
  final bool hasButton;
  final bool hasBanner;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Card(
          child: SizedBox(
            width: w * 0.98,
            child: productImage == null
                ? SizedBox(
                    height: h * 0.15,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade100,
                      highlightColor: Colors.grey.shade300,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                : ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    child: CachedNetworkImage(
                      height: h * 0.15,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                      imageUrl: productImage ?? "",
                      errorWidget: (context, error, stackTrace) {
                        return CachedNetworkImage(
                            height: h * 0.2,
                            width: double.infinity,
                            fit: BoxFit.fitHeight,
                            imageUrl:
                                "https://ps.w.org/replace-broken-images/assets/icon-256x256.png");
                      },
                    ),
                  ),
          ),
        ),
        hasButton
            ? Positioned(
                bottom: 10,
                left: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          buttonColor ?? Colors.black)),
                  onPressed: onPressed,
                  child: Text(
                    "Order Now",
                    style: context.labelLarge
                        .copyWith(color: buttonChildrenColor ?? Colors.white),
                  ),
                ),
              )
            : hasBanner
                ? Positioned(
                    bottom: 0,
                    child: Container(
                      color: Colors.grey.withOpacity(0.7),
                      height: h * 0.04,
                      width: w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                buttonColor ?? Colors.transparent)),
                        onPressed: onPressed,
                        child: Text(
                          "Order Now",
                          style: context.labelLarge.copyWith(
                              color: buttonChildrenColor ?? Colors.white),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink()
      ],
    );
  }
}
