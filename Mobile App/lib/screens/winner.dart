import 'package:flutter/material.dart';
import 'package:soccer_win/screens/home.dart';

// Define a StatefulWidget for WinnerScreen
class WinnerScreen extends StatefulWidget {
  final String winner;
  const WinnerScreen({Key? key, required this.winner}) : super(key: key);
  @override
  _WinnerScreenState createState() => _WinnerScreenState();
}

// Define the state for WinnerScreen
class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          automaticallyImplyLeading: false,
          title: Text('SOCCER_APP'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              // Navigate back to HomeScreen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/football_background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10), // Vertical spacing
                Text(
                  'Winner Prediction',
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                SizedBox(height: 60), // Vertical spacing
                Text(
                  "Predicted winner : ",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ), // Vertical spacing
                Text(
                  widget.winner, // Display predicted winner
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
