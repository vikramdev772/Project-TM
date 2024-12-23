import 'package:flutter/material.dart';
import 'router/router.dart'; // Import the router file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home, // Set the initial route
      onGenerateRoute: RouteGenerator.generateRoute, // Use the route generator
    );
  }
}
