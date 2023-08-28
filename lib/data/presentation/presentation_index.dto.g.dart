// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_index.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PresentationIndex _$$_PresentationIndexFromJson(Map<String, dynamic> json) =>
    _$_PresentationIndex(
      index: json['index'] as int,
      presentationId: PresentationId.fromJson(
          json['presentationId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PresentationIndexToJson(
        _$_PresentationIndex instance) =>
    <String, dynamic>{
      'index': instance.index,
      'presentationId': instance.presentationId,
    };
