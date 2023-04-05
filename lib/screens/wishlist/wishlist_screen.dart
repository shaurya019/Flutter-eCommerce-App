import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';
import '../../models/product_model.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => WishlistScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
        body:GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,vertical: 16.0,),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2.4,
            ),
            itemCount: UserProduct.products.length,
            itemBuilder: (BuildContext context, int index){
              return Center(
                  child: ProductCard(
                    product: UserProduct.products[index],
                    widthFactor: 1.1,
                    isWishlist: true,
                  ));
            })
    );
  }
}