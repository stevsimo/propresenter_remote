import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_id.dto.freezed.dart';
part 'presentation_id.dto.g.dart';

@freezed
class PresentationId with _$PresentationId {
  const factory PresentationId({
    required String uuid,

    required String name,

    required String index,


})  = _PresentationId;

factory PresentationId.fromJson(Map<String, dynamic> json) => _$PresentationIdFromJson(json);
}