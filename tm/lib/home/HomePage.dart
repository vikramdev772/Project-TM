import 'package:flutter/material.dart';
import '../router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.profile);
              },
              child: const Text('Go to Profile Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.settings);
              },
              child: const Text('Go to Settings Page'),
            ),
          ],
        ),
      ),
    );
  }
}
