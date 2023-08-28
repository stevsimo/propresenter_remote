// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_response.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresentationResponseDto _$PresentationResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _PresentationResponse.fromJson(json);
}

/// @nodoc
mixin _$PresentationResponseDto {
  @JsonValue('presentation_index')
  PresentationIndex get presentationIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationResponseDtoCopyWith<PresentationResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationResponseDtoCopyWith<$Res> {
  factory $PresentationResponseDtoCopyWith(PresentationResponseDto value,
          $Res Function(PresentationResponseDto) then) =
      _$PresentationResponseDtoCopyWithImpl<$Res, PresentationResponseDto>;
  @useResult
  $Res call(
      {@JsonValue('presentation_index') PresentationIndex presentationIndex});

  $PresentationIndexCopyWith<$Res> get presentationIndex;
}

/// @nodoc
class _$PresentationResponseDtoCopyWithImpl<$Res,
        $Val extends PresentationResponseDto>
    implements $PresentationResponseDtoCopyWith<$Res> {
  _$PresentationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentationIndex = null,
  }) {
    return _then(_value.copyWith(
      presentationIndex: null == presentationIndex
          ? _value.presentationIndex
          : presentationIndex // ignore: cast_nullable_to_non_nullable
              as PresentationIndex,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PresentationIndexCopyWith<$Res> get presentationIndex {
    return $PresentationIndexCopyWith<$Res>(_value.presentationIndex, (value) {
      return _then(_value.copyWith(presentationIndex: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PresentationResponseCopyWith<$Res>
    implements $PresentationResponseDtoCopyWith<$Res> {
  factory _$$_PresentationResponseCopyWith(_$_PresentationResponse value,
          $Res Function(_$_PresentationResponse) then) =
      __$$_PresentationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('presentation_index') PresentationIndex presentationIndex});

  @override
  $PresentationIndexCopyWith<$Res> get presentationIndex;
}

/// @nodoc
class __$$_PresentationResponseCopyWithImpl<$Res>
    extends _$PresentationResponseDtoCopyWithImpl<$Res, _$_PresentationResponse>
    implements _$$_PresentationResponseCopyWith<$Res> {
  __$$_PresentationResponseCopyWithImpl(_$_PresentationResponse _value,
      $Res Function(_$_PresentationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentationIndex = null,
  }) {
    return _then(_$_PresentationResponse(
      presentationIndex: null == presentationIndex
          ? _value.presentationIndex
          : presentationIndex // ignore: cast_nullable_to_non_nullable
              as PresentationIndex,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresentationResponse implements _PresentationResponse {
  const _$_PresentationResponse(
      {@JsonValue('presentation_index') required this.presentationIndex});

  factory _$_PresentationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PresentationResponseFromJson(json);

  @override
  @JsonValue('presentation_index')
  final PresentationIndex presentationIndex;

  @override
  String toString() {
    return 'PresentationResponseDto(presentationIndex: $presentationIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresentationResponse &&
            (identical(other.presentationIndex, presentationIndex) ||
                other.presentationIndex == presentationIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, presentationIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresentationResponseCopyWith<_$_PresentationResponse> get copyWith =>
      __$$_PresentationResponseCopyWithImpl<_$_PresentationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresentationResponseToJson(
      this,
    );
  }
}

abstract class _PresentationResponse implements PresentationResponseDto {
  const factory _PresentationResponse(
          {@JsonValue('presentation_index')
          required final PresentationIndex presentationIndex}) =
      _$_PresentationResponse;

  factory _PresentationResponse.fromJson(Map<String, dynamic> json) =
      _$_PresentationResponse.fromJson;

  @override
  @JsonValue('presentation_index')
  PresentationIndex get presentationIndex;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationResponseCopyWith<_$_PresentationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
