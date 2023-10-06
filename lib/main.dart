import 'package:flutter/material.dart';
import 'package:master_routing_app/routes/router.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
    onGenerateRoute: Routers.generateRoute,
    initialRoute: "/",
  ));
}
