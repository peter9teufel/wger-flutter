// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Day _$DayFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'routine',
      'name',
      'description',
      'is_rest',
      'need_logs_to_advance',
      'type',
      'order',
      'config'
    ],
  );
  return Day()
    ..id = (json['id'] as num?)?.toInt()
    ..routineId = (json['routine'] as num).toInt()
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..isRest = json['is_rest'] as bool
    ..needLogsToAdvance = json['need_logs_to_advance'] as bool
    ..type = json['type'] as String
    ..order = json['order'] as num
    ..config = json['config'];
}

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'id': instance.id,
      'routine': instance.routineId,
      'name': instance.name,
      'description': instance.description,
      'is_rest': instance.isRest,
      'need_logs_to_advance': instance.needLogsToAdvance,
      'type': instance.type,
      'order': instance.order,
      'config': instance.config,
    };
