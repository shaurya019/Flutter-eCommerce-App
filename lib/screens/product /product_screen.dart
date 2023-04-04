// import 'package:flutter/material.dart';
// import '../../widgets/custom_appbar.dart';
//
// class ProductScreen extends StatelessWidget {
//   static const String routeName = '/product';
//
//   static Route route({required Product product}) {
//     return MaterialPageRoute(
//       settings: RouteSettings(name: routeName),
//       builder: (context) => ProductScreen(product: product),
//     );
//   }
//
//   final Product product;
//
//   const ProductScreen({
//     required this.product,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title: 'Cart'),
//           bottomNavigationBar: CustomNavBar(),
//     );
//   }
// }