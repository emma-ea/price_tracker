// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dark_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DarkMode _$DarkModeFromJson(Map<String, dynamic> json) {
  return _DarkMode.fromJson(json);
}

/// @nodoc
mixin _$DarkMode {
  String? get title => throw _privateConstructorUsedError;
  Brightness? get brightness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DarkModeCopyWith<DarkMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkModeCopyWith<$Res> {
  factory $DarkModeCopyWith(DarkMode value, $Res Function(DarkMode) then) =
      _$DarkModeCopyWithImpl<$Res, DarkMode>;
  @useResult
  $Res call({String? title, Brightness? brightness});
}

/// @nodoc
class _$DarkModeCopyWithImpl<$Res, $Val extends DarkMode>
    implements $DarkModeCopyWith<$Res> {
  _$DarkModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DarkModeCopyWith<$Res> implements $DarkModeCopyWith<$Res> {
  factory _$$_DarkModeCopyWith(
          _$_DarkMode value, $Res Function(_$_DarkMode) then) =
      __$$_DarkModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, Brightness? brightness});
}

/// @nodoc
class __$$_DarkModeCopyWithImpl<$Res>
    extends _$DarkModeCopyWithImpl<$Res, _$_DarkMode>
    implements _$$_DarkModeCopyWith<$Res> {
  __$$_DarkModeCopyWithImpl(
      _$_DarkMode _value, $Res Function(_$_DarkMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_$_DarkMode(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DarkMode implements _DarkMode {
  const _$_DarkMode({required this.title, required this.brightness});

  factory _$_DarkMode.fromJson(Map<String, dynamic> json) =>
      _$$_DarkModeFromJson(json);

  @override
  final String? title;
  @override
  final Brightness? brightness;

  @override
  String toString() {
    return 'DarkMode(title: $title, brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DarkMode &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DarkModeCopyWith<_$_DarkMode> get copyWith =>
      __$$_DarkModeCopyWithImpl<_$_DarkMode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DarkModeToJson(
      this,
    );
  }
}

abstract class _DarkMode implements DarkMode {
  const factory _DarkMode(
      {required final String? title,
      required final Brightness? brightness}) = _$_DarkMode;

  factory _DarkMode.fromJson(Map<String, dynamic> json) = _$_DarkMode.fromJson;

  @override
  String? get title;
  @override
  Brightness? get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_DarkModeCopyWith<_$_DarkMode> get copyWith =>
      throw _privateConstructorUsedError;
}
