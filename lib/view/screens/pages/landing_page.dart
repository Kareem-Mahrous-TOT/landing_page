import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';
import 'package:tot_landing_page_widgets/core/theme/pallete.dart';
import 'package:tot_landing_page_widgets/view/screens/components/categories.dart';
import 'package:tot_landing_page_widgets/view/screens/components/featured_products.dart';
import 'package:tot_landing_page_widgets/view/screens/components/new_arrivals.dart';
import 'package:tot_landing_page_widgets/view/screens/components/promotion.dart';
import 'package:tot_landing_page_widgets/view/screens/components/try_now.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SizedBox(
        height: h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TOTBannerOrganism(model: [
                BannerModel(
                    imagePath:
                        "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg"),
                BannerModel(
                    imagePath:
                        "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg"),
                BannerModel(
                    imagePath:
                        "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg"),
              ]),
              const TOTPromotionOrganism(
                hasButton: true,
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
              ),
              const TOTPromotionOrganism(
                hasBanner: true,
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
              ),
              const TOTPromotionOrganism(
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
              ),
              const TOTCategoriesOrganism(
                itemCount: 3,
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
              ),
              TOTFeaturedProductsOrganism(
                productName: "Basbousa",
                price: "100",
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
                onTap: () {},
                iconOnPressed: () {},
                itemCount: 10,
              ),
              TOTNewArrivalsOrganism(
                productName: "Basbousa",
                price: "100",
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
                onTap: () {},
                iconOnPressed: () {},
                itemCount: 10,
              ),
              TotTryNowOrganinsm(
                productName: "Try our new\n Kunafa",
                productImage:
                    "https://alkhbaz.totplatform.net/assets/catalog/0a841/8009/8009.jpg",
                onPressed: () {},
                buttonChildrenColor: Colors.white,
                buttonColor: black,
                tryNowColor: black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
