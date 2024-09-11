import 'package:flutter/material.dart';
import 'package:soccer_win/screens/splash.dart';

// Entry point of the application
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize bindings
  runApp(MyApp()); // Run the app
}

// MyApp class, a StatelessWidget representing the root of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}
