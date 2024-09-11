import 'dart:async';
import 'package:flutter/material.dart';
import 'package:soccer_win/screens/home.dart';

// Define a StatefulWidget for SplashScreen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

// Define the state for SplashScreen with SingleTickerProviderStateMixin
class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true; // Visibility flag

  late AnimationController animationController; // Animation controller
  late Animation<double> animation; // Animation object

  // Function to start the splash screen timer
  startTime() async {
    var _duration = Duration(seconds: 3); // Duration for splash screen
    return Timer(_duration, navigationPage); // Timer for navigation
  }

  // Function to navigate to HomeScreen
  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  dispose() {
    // Dispose animation controller
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Initialize animation controller and animation
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Animation duration
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible; // Toggle visibility
    });
    startTime(); // Start the splash screen timer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  "Welcome to Soccer Predictor",
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Animated image using animation value
              Image.asset(
                'assets/images/ball.png',
                width: animation.value * 300,
                height: animation.value * 300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
