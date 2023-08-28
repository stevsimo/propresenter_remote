// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_index.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresentationIndex _$PresentationIndexFromJson(Map<String, dynamic> json) {
  return _PresentationIndex.fromJson(json);
}

/// @nodoc
mixin _$PresentationIndex {
  int get index => throw _privateConstructorUsedError;
  @JsonValue('presentation_id')
  PresentationId get presentationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationIndexCopyWith<PresentationIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationIndexCopyWith<$Res> {
  factory $PresentationIndexCopyWith(
          PresentationIndex value, $Res Function(PresentationIndex) then) =
      _$PresentationIndexCopyWithImpl<$Res, PresentationIndex>;
  @useResult
  $Res call(
      {int index, @JsonValue('presentation_id') PresentationId presentationId});

  $PresentationIdCopyWith<$Res> get presentationId;
}

/// @nodoc
class _$PresentationIndexCopyWithImpl<$Res, $Val extends PresentationIndex>
    implements $PresentationIndexCopyWith<$Res> {
  _$PresentationIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? presentationId = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      presentationId: null == presentationId
          ? _value.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as PresentationId,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PresentationIdCopyWith<$Res> get presentationId {
    return $PresentationIdCopyWith<$Res>(_value.presentationId, (value) {
      return _then(_value.copyWith(presentationId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PresentationIndexCopyWith<$Res>
    implements $PresentationIndexCopyWith<$Res> {
  factory _$$_PresentationIndexCopyWith(_$_PresentationIndex value,
          $Res Function(_$_PresentationIndex) then) =
      __$$_PresentationIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index, @JsonValue('presentation_id') PresentationId presentationId});

  @override
  $PresentationIdCopyWith<$Res> get presentationId;
}

/// @nodoc
class __$$_PresentationIndexCopyWithImpl<$Res>
    extends _$PresentationIndexCopyWithImpl<$Res, _$_PresentationIndex>
    implements _$$_PresentationIndexCopyWith<$Res> {
  __$$_PresentationIndexCopyWithImpl(
      _$_PresentationIndex _value, $Res Function(_$_PresentationIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? presentationId = null,
  }) {
    return _then(_$_PresentationIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      presentationId: null == presentationId
          ? _value.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as PresentationId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresentationIndex implements _PresentationIndex {
  const _$_PresentationIndex(
      {required this.index,
      @JsonValue('presentation_id') required this.presentationId});

  factory _$_PresentationIndex.fromJson(Map<String, dynamic> json) =>
      _$$_PresentationIndexFromJson(json);

  @override
  final int index;
  @override
  @JsonValue('presentation_id')
  final PresentationId presentationId;

  @override
  String toString() {
    return 'PresentationIndex(index: $index, presentationId: $presentationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresentationIndex &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, presentationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresentationIndexCopyWith<_$_PresentationIndex> get copyWith =>
      __$$_PresentationIndexCopyWithImpl<_$_PresentationIndex>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresentationIndexToJson(
      this,
    );
  }
}

abstract class _PresentationIndex implements PresentationIndex {
  const factory _PresentationIndex(
      {required final int index,
      @JsonValue('presentation_id')
      required final PresentationId presentationId}) = _$_PresentationIndex;

  factory _PresentationIndex.fromJson(Map<String, dynamic> json) =
      _$_PresentationIndex.fromJson;

  @override
  int get index;
  @override
  @JsonValue('presentation_id')
  PresentationId get presentationId;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationIndexCopyWith<_$_PresentationIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
