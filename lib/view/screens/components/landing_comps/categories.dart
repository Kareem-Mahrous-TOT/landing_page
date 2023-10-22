import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';
import 'package:tot_landing_page_widgets/core/constants/text_style.dart';

class TOTCategoriesOrganism extends StatelessWidget {
  const TOTCategoriesOrganism({
    super.key,
    this.backgroundColor,
    required this.productImage,
    this.onTap,
    required this.itemCount,
    this.categortiesColor,
  });
  final Color? backgroundColor;
  final Color? categortiesColor;
  final String? productImage;
  final VoidCallback? onTap;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        TOTTextAtom.headLineSmall(
          "Categories",
          color: categortiesColor ?? Colors.black,
        ),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: onTap,
                child: Card(
                  color: backgroundColor ?? Colors.white,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: h * 0.18,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                              imageUrl: productImage ?? "",
                              errorWidget: (context, error, stackTrace) {
                                return CachedNetworkImage(
                                    width: double.infinity,
                                    fit: BoxFit.fitWidth,
                                    imageUrl:
                                        "https://ps.w.org/replace-broken-images/assets/icon-256x256.png");
                              },
                            ),
                          ),
                        ),
                        Text(
                          "Basbousa",
                          style: context.labelLarge.copyWith(
                              // fontSize: 18,
                              ),
                        ),
                      ]),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2)),
      ],
    );
  }
}
