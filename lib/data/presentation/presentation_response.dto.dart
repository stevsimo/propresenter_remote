import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:propresenter_remote/data/presentation/presentation_index.dto.dart';

part 'presentation_response.dto.freezed.dart';
part 'presentation_response.dto.g.dart';

@freezed
class PresentationResponseDto with _$PresentationResponseDto {
  const factory PresentationResponseDto({
    @JsonValue('presentation_index')
  required PresentationIndex presentationIndex,

})  = _PresentationResponse;

factory PresentationResponseDto.fromJson(Map<String, dynamic> json) => _$PresentationResponseDtoFromJson(json);
}