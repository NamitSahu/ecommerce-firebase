import 'package:ecommerce_firebase/models/models.dart';
import 'package:ecommerce_firebase/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('This is  route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // case HomeScreen.routeName:
      //   return HomeScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text("Error")),
            ));
  }
}
