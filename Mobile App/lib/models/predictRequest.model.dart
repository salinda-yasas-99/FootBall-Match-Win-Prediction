// Importing the json_annotation package to use annotations for JSON serialization
import 'package:json_annotation/json_annotation.dart';

// This line generates the necessary serialization code during build time
part 'predictRequest.model.g.dart';

// Using the @JsonSerializable annotation to specify serialization details
@JsonSerializable(explicitToJson: true)
class PredictRequest {
  // Properties of the PredictRequest class
  int team1;
  int team2;
  List<int> players1;
  List<int> players2;

  // Constructor for the PredictRequest class
  PredictRequest({
    required this.team1,
    required this.team2,
    required this.players1,
    required this.players2,
  });

  // Factory method to deserialize JSON data into a PredictRequest object
  factory PredictRequest.fromJson(Map<String, dynamic> json) =>
      _$PredictRequestFromJson(json);

  // Method to serialize a PredictRequest object into JSON format
  Map<String, dynamic> toJson() => _$PredictRequestToJson(this);
}
