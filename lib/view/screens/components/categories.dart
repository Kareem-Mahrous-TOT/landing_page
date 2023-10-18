import 'package:flutter/material.dart';

class TOTCategoriesOrganism extends StatelessWidget {
  const TOTCategoriesOrganism({
    super.key,
    this.backgroundColor,
    required this.productImage,
    this.onTap,
    required this.itemCount,
    required this.height,
  });
  final Color? backgroundColor;
  final String? productImage;
  final VoidCallback? onTap;
  final int itemCount;
  final double height;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
                          child: Image.network(
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                            productImage ?? "",
                            errorBuilder: (context, error, stackTrace) {
                              return Image.network(
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                  "https://ps.w.org/replace-broken-images/assets/icon-256x256.png");
                            },
                          ),
                        ),
                      ),
                      const Text(
                        "Basbousa",
                        style: TextStyle(fontSize: 18),
                      ),
                    ]),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2)),
    );
  }
}
