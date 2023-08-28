// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_id.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresentationId _$PresentationIdFromJson(Map<String, dynamic> json) {
  return _PresentationId.fromJson(json);
}

/// @nodoc
mixin _$PresentationId {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationIdCopyWith<PresentationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationIdCopyWith<$Res> {
  factory $PresentationIdCopyWith(
          PresentationId value, $Res Function(PresentationId) then) =
      _$PresentationIdCopyWithImpl<$Res, PresentationId>;
  @useResult
  $Res call({String uuid, String name, String index});
}

/// @nodoc
class _$PresentationIdCopyWithImpl<$Res, $Val extends PresentationId>
    implements $PresentationIdCopyWith<$Res> {
  _$PresentationIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PresentationIdCopyWith<$Res>
    implements $PresentationIdCopyWith<$Res> {
  factory _$$_PresentationIdCopyWith(
          _$_PresentationId value, $Res Function(_$_PresentationId) then) =
      __$$_PresentationIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String name, String index});
}

/// @nodoc
class __$$_PresentationIdCopyWithImpl<$Res>
    extends _$PresentationIdCopyWithImpl<$Res, _$_PresentationId>
    implements _$$_PresentationIdCopyWith<$Res> {
  __$$_PresentationIdCopyWithImpl(
      _$_PresentationId _value, $Res Function(_$_PresentationId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? index = null,
  }) {
    return _then(_$_PresentationId(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresentationId implements _PresentationId {
  const _$_PresentationId(
      {required this.uuid, required this.name, required this.index});

  factory _$_PresentationId.fromJson(Map<String, dynamic> json) =>
      _$$_PresentationIdFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String index;

  @override
  String toString() {
    return 'PresentationId(uuid: $uuid, name: $name, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresentationId &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresentationIdCopyWith<_$_PresentationId> get copyWith =>
      __$$_PresentationIdCopyWithImpl<_$_PresentationId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresentationIdToJson(
      this,
    );
  }
}

abstract class _PresentationId implements PresentationId {
  const factory _PresentationId(
      {required final String uuid,
      required final String name,
      required final String index}) = _$_PresentationId;

  factory _PresentationId.fromJson(Map<String, dynamic> json) =
      _$_PresentationId.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String get index;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationIdCopyWith<_$_PresentationId> get copyWith =>
      throw _privateConstructorUsedError;
}
