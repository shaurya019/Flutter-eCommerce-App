import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/category_model.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/checkout /checkout_screen.dart';
import '../screens/home/home_screen.dart';
import '/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      // case ProductScreen.routeName:
      //   return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as UserCategory);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case OrderConfirmation.routeName:
        return OrderConfirmation.route();
      case PaymentSelection.routeName:
        return PaymentSelection.route();
      default:
        return _errorRoute();
    }
    }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
