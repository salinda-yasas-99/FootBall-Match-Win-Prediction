import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:soccer_win/models/predictResponse.model.dart';
import 'package:soccer_win/screens/winner.dart';

import '../common/const.dart';
import '../models/predictRequest.model.dart';
import 'home.dart';

// Define a StatefulWidget for TeamScreen
class TeamScreen extends StatefulWidget {
  final int country1;
  final int country2;
  const TeamScreen({Key? key, required this.country1, required this.country2})
      : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

// Define the state for TeamScreen
class _TeamScreenState extends State<TeamScreen> {
  var dio = Dio(); // Dio instance for HTTP requests

  String selectedCountryName = "ENG"; // Default selected country name
  String selectedCountryName2 = "SCO"; // Default selected country name 2

  List<int> selectedIndices = []; // List to store selected indices for team 1
  List<int> selectedIndicesTeam2 =
      []; // List to store selected indices for team 2

  String predictedWinner = ""; // Predicted winner variable

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Get screen size

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Navigate back to HomeScreen
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Colors.blue[100],
          automaticallyImplyLeading: false,
          title: Text('SOCCER_APP'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fb5.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20), // Vertical spacing

                  // Dropdown for selecting team 1 country
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.57),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton<String>(
                        value: selectedCountryName,
                        items: NATIONS.map((String name) {
                          return DropdownMenuItem<String>(
                            child: Text(name),
                            value: name,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountryName = value!;
                          });
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_circle_down_sharp),
                        ),
                        iconEnabledColor: Colors.black,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        dropdownColor: Colors.white,
                        underline: Container(),
                        isExpanded: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Vertical spacing

                  // Checkbox list for selecting team 1 players
                  Container(
                    height: size.height * 0.25,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (Player player
                              in NATIONALPLAYER[selectedCountryName]!)
                            CheckboxListTile(
                              side: const BorderSide(
                                  color: Colors.white, width: 2),
                              activeColor: Colors.amber,
                              hoverColor: Colors.white,
                              checkColor: Colors.black,
                              title: Text(
                                player.playerName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                player.nation,
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold),
                              ),
                              value: selectedIndices.contains(player.Index),
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    if (value) {
                                      selectedIndices.add(player.Index);
                                    } else {
                                      selectedIndices.remove(player.Index);
                                    }
                                  }
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Vertical spacing

                  // Dropdown for selecting team 2 country
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.57),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton<String>(
                        value: selectedCountryName2,
                        items: NATIONS.map((String name) {
                          return DropdownMenuItem<String>(
                            child: Text(name),
                            value: name,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountryName2 = value!;
                          });
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_circle_down_sharp),
                        ),
                        iconEnabledColor: Colors.black,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        dropdownColor: Colors.white,
                        underline: Container(),
                        isExpanded: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Vertical spacing

                  // Checkbox list for selecting team 2 players
                  Container(
                    height: size.height * 0.25,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (Player player
                              in NATIONALPLAYER[selectedCountryName2]!)
                            CheckboxListTile(
                              side: const BorderSide(
                                  color: Colors.white, width: 2),
                              activeColor: Colors.amber,
                              hoverColor: Colors.white,
                              checkColor: Colors.black,
                              title: Text(
                                player.playerName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                player.nation,
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold),
                              ),
                              value:
                                  selectedIndicesTeam2.contains(player.Index),
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    if (value) {
                                      selectedIndicesTeam2.add(player.Index);
                                    } else {
                                      selectedIndicesTeam2.remove(player.Index);
                                    }
                                  }
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Vertical spacing

                  // Button to predict and navigate to winner screen
                  ElevatedButton(
                    onPressed: () async {
                      // Call API for prediction
                      await getPrediction();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WinnerScreen(winner: predictedWinner)),
                      );
                    },
                    child: Text(
                      'Go Ahead',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        size.width * 0.5,
                        50.0,
                      ),
                      backgroundColor: Colors.blue[900],
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Method to call prediction API
  Future<void> getPrediction() async {
    PredictRequest request = PredictRequest(
        team1: widget.country1,
        team2: widget.country2,
        players1: selectedIndices,
        players2: selectedIndicesTeam2);

    Response response =
        await dio.post('http://10.0.2.2:8000/predict/', data: request.toJson());

    setState(() {
      // Update predicted winner
      predictedWinner = ResponseApi.fromJson(response.data).response;
    });
  }
}
