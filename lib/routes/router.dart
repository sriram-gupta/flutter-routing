import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/screens.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "/product":
        String? id = routeSettings.arguments.toString();
        return MaterialPageRoute(
            builder: (_) => ProductScreen(
                  productId: id,
                ));
      // Add more cases for different routes here
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
