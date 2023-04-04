import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';
import '../../models/category_model.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required UserCategory category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CatalogScreen(category: category),
    );
  }
  final UserCategory category;

  const CatalogScreen({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<UserProduct> categoryProducts = UserProduct.products.where((product) => product.category == category.name).toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,vertical: 16.0,),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.15,
          ),
          itemCount: categoryProducts.length,
          itemBuilder: (BuildContext context, int index){
            return Center(child: ProductCard(product: categoryProducts[index], widthFactor: 2.2,));
          })
    );
  }
}