import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:soccer_win/screens/winner.dart';
import 'package:http/http.dart' as http;
import '../models/predictRequest.model.dart';
import '../common/const.dart';
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
  late String selectedHomeTeam;
  late String selectedAwayTeam;

  List<String> selectedPlayersHome = [];
  List<String> selectedPlayersAway = [];
  bool _isLoading = false; // To handle the loading state

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
            child: _isLoading // Show loader when loading
                ? CircularProgressIndicator() // Loader displayed in the middle of the screen
                : SingleChildScrollView(
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
                                  Icons.sports_soccer,
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
                                      selectedHomeTeam, // Show the country as subtitle
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    value: selectedPlayersHome
                                        .contains(playerName),
                                    onChanged: (bool? value) {
                                      setState(() {
                                        if (value != null) {
                                          if (value) {
                                            selectedPlayersHome.add(playerName);
                                          } else {
                                            selectedPlayersHome
                                                .remove(playerName);
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
                                  selectedAwayTeam, // Display the away team name here
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Icon(
                                  Icons.sports_soccer,
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
                                      selectedAwayTeam, // Show the country as subtitle
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    value: selectedPlayersAway
                                        .contains(playerName),
                                    onChanged: (bool? value) {
                                      setState(() {
                                        if (value != null) {
                                          if (value) {
                                            selectedPlayersAway.add(playerName);
                                          } else {
                                            selectedPlayersAway
                                                .remove(playerName);
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
                            setState(() {
                              _isLoading = true; // Start loading
                            });

                            Map<String, dynamic> APIdata = {
                              "home_team": widget.UserData['home_team'],
                              "away_team": widget.UserData['away_team'],
                              "year": widget.UserData['year'],
                              "month": widget.UserData['month'],
                              "day": widget.UserData['day'],
                              "date": "2024/0703",
                              "temperature": widget.UserData['temperature'],
                              "home_players": selectedPlayersHome,
                              "away_players": selectedPlayersAway
                            };

                            print('API data in team screen: $APIdata');
                            try {
                              final response = await http.post(
                                Uri.parse('http://localhost:8000/api/predict/'),
                                // Uri.parse(
                                //     'https://cd19-192-248-2-10.ngrok-free.app/api/predict/'),
                                headers: {"Content-Type": "application/json"},
                                body: jsonEncode(APIdata),
                              );

                              // Check if the request was successful
                              if (response.statusCode == 200) {
                                final responseData = jsonDecode(response.body);
                                print('Response data: $responseData');

                                // Navigate to the WinnerScreen with the predicted winner
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        WinnerScreen(winner: responseData),
                                  ),
                                );
                              } else {
                                print(
                                    'Failed to get prediction. Status code: ${response.statusCode}');
                              }
                            } catch (error) {
                              print('Error occurred: $error');
                            } finally {
                              setState(() {
                                _isLoading = false; // Stop loading
                              });
                            }
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
                              50,
                            ),
                            backgroundColor: Colors.amber,
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
}
