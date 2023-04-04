import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/models.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';
import '../../models/category_model.dart';
import '../../widgets/hero_carousel_card.dart';
import '../../widgets/product_card.dart';
import '../../widgets/product_carousel.dart';
import '../../widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => HomeScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title:'Zero to Unicorn'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: true,
                ),
                items: UserCategory.categories.map((category) => HereCarouselCard(category:category)).toList(),
              ),
          ),
          SectionTile(title:'RECOMMENED'),
          ProductCarousel(products: UserProduct.products.where((product) =>  product.isRecommended).toList()),
          SectionTile(title:'MOST POPULAR'),
          ProductCarousel(products: UserProduct.products.where((product) =>  product.isPopular).toList()),
        ],
      ),
    );
  }
}










