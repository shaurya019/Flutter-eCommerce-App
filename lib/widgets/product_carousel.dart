import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<UserProduct> products;
  const ProductCarousel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: UserProduct.products.length,
          itemBuilder:(context,index){
            return Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: ProductCard(product: products[index],),
            );
          }),
    );
  }
}