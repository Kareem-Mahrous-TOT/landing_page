import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

// ignore: must_be_immutable
class TOTNewArrivalsOrganism extends StatelessWidget {
  TOTNewArrivalsOrganism({
    super.key,
    required this.productName,
    this.productDescription,
    required this.price,
    required this.productImage,
    required this.onTap,
    this.isSelected = false,
    this.hasFavIcon = false,
    this.hasDescription = false,
    this.iconOnPressed,
    this.cardColor,
    required this.itemCount,
    this.productDescritionColor,
    this.productNameColor,
  });

  final String? productName;
  final String? productDescription;
  final String? price;
  final String? productImage;
  bool isSelected;
  final bool? hasFavIcon;
  final bool? hasDescription;
  final VoidCallback? onTap;
  final VoidCallback? iconOnPressed;
  final Color? cardColor;
  final Color? productDescritionColor;
  final Color? productNameColor;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        SizedBox(
          width: w * 0.95,
          child: TOTTextWithTextButtonMolecule(
              text: "New Arrival",
              textButtonText: "View all",
              onPressed: () {},
              buttonBackgroundColor: Colors.transparent),
        ),
        SizedBox(
          height: h * 0.27,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: w * 0.35,
                  child: InkWell(
                    onTap: onTap!,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: cardColor ?? Colors.white,
                      child: Column(
                        children: [
                          productImage == null
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
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: CachedNetworkImage(
                                    height: h * 0.15,
                                    width: double.infinity,
                                    fit: BoxFit.fitHeight,
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TOTTextAtom.titleMedium(
                                  productName!,
                                  color: productNameColor ?? Colors.black,
                                ),
                                hasDescription!
                                    ? TOTTextAtom.bodyMedium(
                                        productDescription!,
                                        color: productDescritionColor ??
                                            Colors.grey,
                                      )
                                    : const SizedBox.shrink(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TOTTextAtom.titleMedium("EGP $price"),
                                    hasFavIcon!
                                        ? IconButton(
                                            onPressed: iconOnPressed,
                                            icon: !isSelected
                                                ? const Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    color: Colors.grey,
                                                  )
                                                : const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                          )
                                        : const SizedBox.shrink(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
