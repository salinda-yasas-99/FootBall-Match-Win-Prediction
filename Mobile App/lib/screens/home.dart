// Importing necessary packages and files
import 'package:flutter/material.dart';
import 'package:soccer_win/screens/team.dart'; // Assuming this is where TeamScreen is defined
import 'package:soccer_win/screens/winner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Importing constants
import '../common/const.dart';

// Define HomeScreen as a StatefulWidget
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Define the state for HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  // Initial selected country IDs
  int selectedCountry1Id = 4;
  int selectedCountry2Id = 13;
  DateTime selectedDate = DateTime.now();
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  String temperature = ''; // Variable to hold the temperature input

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Get the screen size

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          automaticallyImplyLeading: false, // Hide back button
          title: Text('SOCCER_WIN'), // AppBar title
          centerTitle: true,
        ),
        body: Form(
          key: _formKey, // Assigning the form key
          child: Container(
            // Container to hold the body content
            padding: EdgeInsets.symmetric(horizontal: 10), // Padding
            decoration: BoxDecoration(
              // Background image decoration
              image: DecorationImage(
                image: AssetImage("assets/images/fb3.jpeg"), // Background image
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              // Center the content vertically
              child: SingleChildScrollView(
                // Allow scrolling if content overflows
                child: Column(
                  // Main column to hold content
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text widget for title
                    Text(
                      'Select Your Teams',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                    SizedBox(
                        height: size.height * 0.2), // Sized box for spacing

                    // DropdownButton for selecting first country
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton<int>(
                          value: selectedCountry1Id, // Selected value
                          items: COUNTRIES.map((Country country) {
                            // Mapping countries to dropdown items
                            return DropdownMenuItem<int>(
                              child: Text(country.name),
                              value: country.id,
                            );
                          }).toList(),
                          onChanged: (value) {
                            // Update selected country ID
                            setState(() {
                              selectedCountry1Id = value!;
                            });
                            print("You have selected Country ID $value");
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

                    // Container for VS indicator
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          'VS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Vertical spacing

                    // DropdownButton for selecting second country
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton<int>(
                          value: selectedCountry2Id, // Selected value
                          items: COUNTRIES
                              .where(
                                  (country) => country.id != selectedCountry1Id)
                              .map((Country country) {
                            // Mapping countries to dropdown items, excluding the selected one
                            return DropdownMenuItem<int>(
                              child: Text(country.name),
                              value: country.id,
                            );
                          }).toList(),
                          onChanged: (value) {
                            // Update selected country ID
                            setState(() {
                              selectedCountry2Id = value!;
                            });
                            print("You have selected Country ID $value");
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
                    // DecoratedBox(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: Padding(
                    //     padding: EdgeInsets.only(left: 30, right: 30),
                    //     child: DropdownButton<int>(
                    //       value: selectedCountry2Id, // Selected value
                    //       items: COUNTRIES.map((Country country) {
                    //         // Mapping countries to dropdown items
                    //         return DropdownMenuItem<int>(
                    //           child: Text(country.name),
                    //           value: country.id,
                    //         );
                    //       }).toList(),
                    //       onChanged: (value) {
                    //         // Update selected country ID
                    //         setState(() {
                    //           selectedCountry2Id = value!;
                    //         });
                    //         print("You have selected Country ID $value");
                    //       },
                    //       icon: const Padding(
                    //         padding: EdgeInsets.only(left: 20),
                    //         child: Icon(Icons.arrow_circle_down_sharp),
                    //       ),
                    //       iconEnabledColor: Colors.black,
                    //       style: const TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 20,
                    //       ),
                    //       dropdownColor: Colors.white,
                    //       underline: Container(),
                    //       isExpanded: true,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 20), // Vertical spacing

                    // Text field for city average temperature
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {
                              temperature =
                                  value; // Store the temperature value
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a temperature';
                            }
                            final temp = int.tryParse(value);
                            if (temp == null || temp < 10 || temp > 30) {
                              return 'Please enter a number between 10 and 30';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "City average temperature",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Text field for selected date
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: GestureDetector(
                          onTap: () => _selectDate(context),
                          child: AbsorbPointer(
                            child: TextFormField(
                              controller: TextEditingController(
                                text: "${selectedDate.toLocal()}".split(' ')[0],
                              ),
                              decoration: InputDecoration(
                                hintText: "Select Date",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: size.height * 0.1), // Vertical spacing

                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // Find the selected countries based on their IDs
                          String homeTeam = COUNTRIES
                              .firstWhere(
                                  (country) => country.id == selectedCountry1Id)
                              .name;
                          String awayTeam = COUNTRIES
                              .firstWhere(
                                  (country) => country.id == selectedCountry2Id)
                              .name;

                          Map<String, dynamic> matchData = {
                            "home_team": homeTeam,
                            "away_team": awayTeam,
                            "year": selectedDate.year,
                            "month": selectedDate.month,
                            "day": selectedDate.day,
                            "date": "${selectedDate.day.toString().padLeft(2, '0')}/"
                                "${selectedDate.month.toString().padLeft(2, '0')}/"
                                "${selectedDate.year}",
                            "temperature": int.tryParse(temperature) ?? 0,
                          };

                          Navigator.pushReplacement(
                            context,
                            // MaterialPageRoute(
                            //   builder: (context) => WinnerScreen(
                            //       winner: responseData['prediction']),
                            // ),
                            MaterialPageRoute(
                              builder: (context) => TeamScreen(
                                ScrHomeTeam: homeTeam,
                                ScrawayTeam: awayTeam,
                                UserData: matchData,
                              ),
                            ),
                          );
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
                          50.0,
                        ),
                        backgroundColor: Colors.blue[900],
                        foregroundColor: Colors.white,
                      ),
                    ),

                    // ElevatedButton to print the object
                    // ElevatedButton(
                    //   onPressed: () async {
                    //     if (_formKey.currentState!.validate()) {
                    //       // Find the selected countries based on their IDs
                    //       String homeTeam = COUNTRIES
                    //           .firstWhere(
                    //               (country) => country.id == selectedCountry1Id)
                    //           .name;
                    //       String awayTeam = COUNTRIES
                    //           .firstWhere(
                    //               (country) => country.id == selectedCountry2Id)
                    //           .name;

                    //       Navigator.pushReplacement(
                    //         context,
                    //         // MaterialPageRoute(
                    //         //   builder: (context) => WinnerScreen(
                    //         //       winner: responseData['prediction']),
                    //         // ),
                    //         MaterialPageRoute(
                    //           builder: (context) => TeamScreen(
                    //             country1: 1,
                    //             country2: 2,
                    //           ),
                    //         ),
                    //       );

                    //       //Construct the object
                    //       Map<String, dynamic> matchData = {
                    //         "home_team": homeTeam,
                    //         "away_team": awayTeam,
                    //         "year": selectedDate.year,
                    //         "month": selectedDate.month,
                    //         "day": selectedDate.day,
                    //         "temperature": int.tryParse(temperature) ?? 0,
                    //       };

                    //       //Print the object
                    //       print(matchData);

                    //       //Make the POST request
                    //       try {
                    //         final response = await http.post(
                    //           Uri.parse('http://localhost:8000/api/predict/'),
                    //           headers: {"Content-Type": "application/json"},
                    //           body: jsonEncode(matchData),
                    //         );

                    //         //Check if the request was successful
                    //         if (response.statusCode == 200) {
                    //           // Decode the response body
                    //           final responseData = jsonDecode(response.body);
                    //           print('Response data: $responseData');

                    //           //Navigate to the WinnerScreen with the predicted winner
                    //           Navigator.pushReplacement(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => WinnerScreen(
                    //                   winner: responseData['prediction']),
                    //             ),
                    //             MaterialPageRoute(
                    //               builder: (context) => TeamScreen(
                    //                 country1: 1,
                    //                 country2: 2,
                    //               ),
                    //             ),
                    //           );
                    //         } else {
                    //           print(
                    //               'Failed to get prediction. Status code: ${response.statusCode}');
                    //           print('Failed to get prediction.');
                    //         }
                    //       } catch (error) {
                    //         print('Error occurred: $error');
                    //       }
                    //     }
                    //   },
                    //   child: Text(
                    //     'Go Ahead',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 20),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     minimumSize: Size(
                    //       size.width * 0.5,
                    //       50.0,
                    //     ),
                    //     backgroundColor: Colors.blue[900],
                    //     foregroundColor: Colors.white,
                    //   ),
                    // ),

                    //Print seleted values
                    // ElevatedButton(
                    //   onPressed: () {
                    //     String homeTeam = COUNTRIES
                    //         .firstWhere(
                    //             (country) => country.id == selectedCountry1Id)
                    //         .name;
                    //     String awayTeam = COUNTRIES
                    //         .firstWhere(
                    //             (country) => country.id == selectedCountry2Id)
                    //         .name;
                    //     Map<String, dynamic> matchData = {
                    //       "home_team": homeTeam,
                    //       "away_team": awayTeam,
                    //       "year": selectedDate.year,
                    //       "month": selectedDate.month,
                    //       "day": selectedDate.day,
                    //       "date": "${selectedDate.day.toString().padLeft(2, '0')}/"
                    //           "${selectedDate.month.toString().padLeft(2, '0')}/"
                    //           "${selectedDate.year}",
                    //       "temperature": int.tryParse(temperature) ?? 0,
                    //     };

                    //     //Print the object
                    //     print(matchData);
                    //   },
                    //   child: Text(
                    //     'Print seleted values',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 20,
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     minimumSize: Size(size.width * 0.5, 50.0),
                    //     backgroundColor:
                    //         Colors.green[900], // Change button color if needed
                    //     foregroundColor: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
