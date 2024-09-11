// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictRequest.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictRequest _$PredictRequestFromJson(Map<String, dynamic> json) =>
    PredictRequest(
      team1: json['team1'] as int,
      team2: json['team2'] as int,
      players1:
          (json['players1'] as List<dynamic>).map((e) => e as int).toList(),
      players2:
          (json['players2'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$PredictRequestToJson(PredictRequest instance) =>
    <String, dynamic>{
      'team1': instance.team1,
      'team2': instance.team2,
      'players1': instance.players1,
      'players2': instance.players2,
    };
