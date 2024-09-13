import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:soccer_win/models/predictResponse.model.dart';
import 'package:soccer_win/screens/winner.dart';

import '../common/const.dart';
import '../models/predictRequest.model.dart';
import 'home.dart';

// Define a StatefulWidget for TeamScreen
class TeamScreen extends StatefulWidget {
  final String ScrHomeTeam;
  final String ScrawayTeam;
  final Map<String, dynamic> UserData;

  const TeamScreen(
      {Key? key,
      required this.ScrHomeTeam,
      required this.ScrawayTeam,
      required this.UserData})
      : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

// Define the state for TeamScreen
class _TeamScreenState extends State<TeamScreen> {
  var dio = Dio(); // Dio instance for HTTP requests

  // String selectedCountryName = "ENG"; // Default selected country name
  // String selectedCountryName2 = "SCO"; // Default selected country name

  //String selectedHomeTeam = "Argentina"; // Default selected country name
  //String selectedAwayTeam = "Italy"; // Default selected country name 2

  late String selectedHomeTeam;
  late String selectedAwayTeam;

  @override
  void initState() {
    super.initState();

    // Assigning the passed values to selectedHomeTeam and selectedAwayTeam
    selectedHomeTeam = widget.ScrHomeTeam;
    selectedAwayTeam = widget.ScrawayTeam;

    print("Home Team: $selectedHomeTeam");
    print("Away Team: $selectedAwayTeam");
    print("User Data: ${widget.UserData}");
  }

  List<String> selectedPlayersHome = [];
  List<String> selectedPlayersAway = [];

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
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedHomeTeam, // Display the home team name here
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          const Icon(
                            Icons
                                .sports_soccer, // You can change the icon if necessary
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Vertical spacing

                  // Checkbox list for selecting team 1 players
                  Container(
                    height: size.height * 0.28,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (String playerName
                              in playersByCountry[selectedHomeTeam]!)
                            CheckboxListTile(
                              side: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              activeColor: Colors.amber,
                              hoverColor: Colors.white,
                              checkColor: Colors.black,
                              title: Text(
                                playerName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                selectedHomeTeam, // You can show the country as subtitle
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: selectedPlayersHome.contains(playerName),
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    if (value) {
                                      selectedPlayersHome.add(playerName);
                                    } else {
                                      selectedPlayersHome.remove(playerName);
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

                  // Dropdown for selecting away team 2 country
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
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedAwayTeam, // Display the home team name here
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          const Icon(
                            Icons
                                .sports_soccer, // You can change the icon if necessary
                            color: Colors.black,
                          ),
                        ],
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
                          for (String playerName
                              in playersByCountry[selectedAwayTeam]!)
                            CheckboxListTile(
                              side: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              activeColor: Colors.amber,
                              hoverColor: Colors.white,
                              checkColor: Colors.black,
                              title: Text(
                                playerName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                selectedAwayTeam, // You can show the country as subtitle
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: selectedPlayersAway.contains(playerName),
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value != null) {
                                    if (value) {
                                      selectedPlayersAway.add(playerName);
                                    } else {
                                      selectedPlayersAway.remove(playerName);
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
                      Map<String, dynamic> APIdata = {
                        "home_team": widget.UserData['home_team'],
                        "away_team": widget.UserData['away_team'],
                        "year": widget.UserData['year'],
                        "month": widget.UserData['month'],
                        "day": widget.UserData['day'],
                        "date": "2024/0703",
                        "temperature": widget.UserData['temperature'],
                        "home_players": selectedHomeTeam,
                        "away_players": selectedPlayersAway
                      };
                      print('API data in team screen: ${APIdata}');
                      // Call API for prediction
                      //await getPrediction();
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           WinnerScreen(winner: predictedWinner)),
                      // );
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

                  // New Button to print selected players
                  ElevatedButton(
                    onPressed: () {
                      // Print the selected players for home and away teams
                      print('Selected Home Team Players: $selectedPlayersHome');
                      print('Selected Away Team Players: $selectedPlayersAway');
                      print('User data in team screen: ${widget.UserData}');
                    },
                    child: Text(
                      'Print Selected Players',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(size.width * 0.5, 50.0),
                      backgroundColor:
                          Colors.green[900], // Change button color if needed
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
  // Future<void> getPrediction() async {
  //   PredictRequest request = PredictRequest(
  //       team1: widget.country1,
  //       team2: widget.country2,
  //       players1: selectedIndices,
  //       players2: selectedIndicesTeam2);

  //   Response response =
  //       await dio.post('http://10.0.2.2:8000/predict/', data: request.toJson());

  //   setState(() {
  //     // Update predicted winner
  //     predictedWinner = ResponseApi.fromJson(response.data).response;
  //   });
  // }
}
