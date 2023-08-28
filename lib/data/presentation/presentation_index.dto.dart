import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:propresenter_remote/data/presentation/presentation_id.dto.dart';

part 'presentation_index.dto.freezed.dart';
part 'presentation_index.dto.g.dart';

@freezed
class PresentationIndex with _$PresentationIndex {
  const factory PresentationIndex({
    required int index,

    @JsonValue('presentation_id')
    required PresentationId presentationId,

})  = _PresentationIndex;

factory PresentationIndex.fromJson(Map<String, dynamic> json) => _$PresentationIndexFromJson(json);
}