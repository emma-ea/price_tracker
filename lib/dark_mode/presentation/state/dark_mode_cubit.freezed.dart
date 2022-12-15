// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dark_mode_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DarkModeState _$DarkModeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'light':
      return _LightDarkModeState.fromJson(json);
    case 'dark':
      return _DarkDarkModeState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DarkModeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DarkModeState {
  DarkModeStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DarkModeStatePayload payload) light,
    required TResult Function(DarkModeStatePayload payload) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DarkModeStatePayload payload)? light,
    TResult? Function(DarkModeStatePayload payload)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DarkModeStatePayload payload)? light,
    TResult Function(DarkModeStatePayload payload)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightDarkModeState value) light,
    required TResult Function(_DarkDarkModeState value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightDarkModeState value)? light,
    TResult? Function(_DarkDarkModeState value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightDarkModeState value)? light,
    TResult Function(_DarkDarkModeState value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DarkModeStateCopyWith<DarkModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkModeStateCopyWith<$Res> {
  factory $DarkModeStateCopyWith(
          DarkModeState value, $Res Function(DarkModeState) then) =
      _$DarkModeStateCopyWithImpl<$Res, DarkModeState>;
  @useResult
  $Res call({DarkModeStatePayload payload});

  $DarkModeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$DarkModeStateCopyWithImpl<$Res, $Val extends DarkModeState>
    implements $DarkModeStateCopyWith<$Res> {
  _$DarkModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DarkModeStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DarkModeStatePayloadCopyWith<$Res> get payload {
    return $DarkModeStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LightDarkModeStateCopyWith<$Res>
    implements $DarkModeStateCopyWith<$Res> {
  factory _$$_LightDarkModeStateCopyWith(_$_LightDarkModeState value,
          $Res Function(_$_LightDarkModeState) then) =
      __$$_LightDarkModeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DarkModeStatePayload payload});

  @override
  $DarkModeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_LightDarkModeStateCopyWithImpl<$Res>
    extends _$DarkModeStateCopyWithImpl<$Res, _$_LightDarkModeState>
    implements _$$_LightDarkModeStateCopyWith<$Res> {
  __$$_LightDarkModeStateCopyWithImpl(
      _$_LightDarkModeState _value, $Res Function(_$_LightDarkModeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_LightDarkModeState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DarkModeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LightDarkModeState implements _LightDarkModeState {
  const _$_LightDarkModeState({required this.payload, final String? $type})
      : $type = $type ?? 'light';

  factory _$_LightDarkModeState.fromJson(Map<String, dynamic> json) =>
      _$$_LightDarkModeStateFromJson(json);

  @override
  final DarkModeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DarkModeState.light(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LightDarkModeState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LightDarkModeStateCopyWith<_$_LightDarkModeState> get copyWith =>
      __$$_LightDarkModeStateCopyWithImpl<_$_LightDarkModeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DarkModeStatePayload payload) light,
    required TResult Function(DarkModeStatePayload payload) dark,
  }) {
    return light(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DarkModeStatePayload payload)? light,
    TResult? Function(DarkModeStatePayload payload)? dark,
  }) {
    return light?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DarkModeStatePayload payload)? light,
    TResult Function(DarkModeStatePayload payload)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightDarkModeState value) light,
    required TResult Function(_DarkDarkModeState value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightDarkModeState value)? light,
    TResult? Function(_DarkDarkModeState value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightDarkModeState value)? light,
    TResult Function(_DarkDarkModeState value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LightDarkModeStateToJson(
      this,
    );
  }
}

abstract class _LightDarkModeState implements DarkModeState {
  const factory _LightDarkModeState(
      {required final DarkModeStatePayload payload}) = _$_LightDarkModeState;

  factory _LightDarkModeState.fromJson(Map<String, dynamic> json) =
      _$_LightDarkModeState.fromJson;

  @override
  DarkModeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_LightDarkModeStateCopyWith<_$_LightDarkModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DarkDarkModeStateCopyWith<$Res>
    implements $DarkModeStateCopyWith<$Res> {
  factory _$$_DarkDarkModeStateCopyWith(_$_DarkDarkModeState value,
          $Res Function(_$_DarkDarkModeState) then) =
      __$$_DarkDarkModeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DarkModeStatePayload payload});

  @override
  $DarkModeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_DarkDarkModeStateCopyWithImpl<$Res>
    extends _$DarkModeStateCopyWithImpl<$Res, _$_DarkDarkModeState>
    implements _$$_DarkDarkModeStateCopyWith<$Res> {
  __$$_DarkDarkModeStateCopyWithImpl(
      _$_DarkDarkModeState _value, $Res Function(_$_DarkDarkModeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_DarkDarkModeState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DarkModeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DarkDarkModeState implements _DarkDarkModeState {
  const _$_DarkDarkModeState({required this.payload, final String? $type})
      : $type = $type ?? 'dark';

  factory _$_DarkDarkModeState.fromJson(Map<String, dynamic> json) =>
      _$$_DarkDarkModeStateFromJson(json);

  @override
  final DarkModeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DarkModeState.dark(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DarkDarkModeState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DarkDarkModeStateCopyWith<_$_DarkDarkModeState> get copyWith =>
      __$$_DarkDarkModeStateCopyWithImpl<_$_DarkDarkModeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DarkModeStatePayload payload) light,
    required TResult Function(DarkModeStatePayload payload) dark,
  }) {
    return dark(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DarkModeStatePayload payload)? light,
    TResult? Function(DarkModeStatePayload payload)? dark,
  }) {
    return dark?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DarkModeStatePayload payload)? light,
    TResult Function(DarkModeStatePayload payload)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LightDarkModeState value) light,
    required TResult Function(_DarkDarkModeState value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LightDarkModeState value)? light,
    TResult? Function(_DarkDarkModeState value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LightDarkModeState value)? light,
    TResult Function(_DarkDarkModeState value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DarkDarkModeStateToJson(
      this,
    );
  }
}

abstract class _DarkDarkModeState implements DarkModeState {
  const factory _DarkDarkModeState(
      {required final DarkModeStatePayload payload}) = _$_DarkDarkModeState;

  factory _DarkDarkModeState.fromJson(Map<String, dynamic> json) =
      _$_DarkDarkModeState.fromJson;

  @override
  DarkModeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_DarkDarkModeStateCopyWith<_$_DarkDarkModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

DarkModeStatePayload _$DarkModeStatePayloadFromJson(Map<String, dynamic> json) {
  return _DarkModeStatePayload.fromJson(json);
}

/// @nodoc
mixin _$DarkModeStatePayload {
  DarkMode? get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DarkModeStatePayloadCopyWith<DarkModeStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkModeStatePayloadCopyWith<$Res> {
  factory $DarkModeStatePayloadCopyWith(DarkModeStatePayload value,
          $Res Function(DarkModeStatePayload) then) =
      _$DarkModeStatePayloadCopyWithImpl<$Res, DarkModeStatePayload>;
  @useResult
  $Res call({DarkMode? darkMode});

  $DarkModeCopyWith<$Res>? get darkMode;
}

/// @nodoc
class _$DarkModeStatePayloadCopyWithImpl<$Res,
        $Val extends DarkModeStatePayload>
    implements $DarkModeStatePayloadCopyWith<$Res> {
  _$DarkModeStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      darkMode: freezed == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as DarkMode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DarkModeCopyWith<$Res>? get darkMode {
    if (_value.darkMode == null) {
      return null;
    }

    return $DarkModeCopyWith<$Res>(_value.darkMode!, (value) {
      return _then(_value.copyWith(darkMode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DarkModeStatePayloadCopyWith<$Res>
    implements $DarkModeStatePayloadCopyWith<$Res> {
  factory _$$_DarkModeStatePayloadCopyWith(_$_DarkModeStatePayload value,
          $Res Function(_$_DarkModeStatePayload) then) =
      __$$_DarkModeStatePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DarkMode? darkMode});

  @override
  $DarkModeCopyWith<$Res>? get darkMode;
}

/// @nodoc
class __$$_DarkModeStatePayloadCopyWithImpl<$Res>
    extends _$DarkModeStatePayloadCopyWithImpl<$Res, _$_DarkModeStatePayload>
    implements _$$_DarkModeStatePayloadCopyWith<$Res> {
  __$$_DarkModeStatePayloadCopyWithImpl(_$_DarkModeStatePayload _value,
      $Res Function(_$_DarkModeStatePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_$_DarkModeStatePayload(
      darkMode: freezed == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as DarkMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DarkModeStatePayload implements _DarkModeStatePayload {
  const _$_DarkModeStatePayload({required this.darkMode});

  factory _$_DarkModeStatePayload.fromJson(Map<String, dynamic> json) =>
      _$$_DarkModeStatePayloadFromJson(json);

  @override
  final DarkMode? darkMode;

  @override
  String toString() {
    return 'DarkModeStatePayload(darkMode: $darkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DarkModeStatePayload &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, darkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DarkModeStatePayloadCopyWith<_$_DarkModeStatePayload> get copyWith =>
      __$$_DarkModeStatePayloadCopyWithImpl<_$_DarkModeStatePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DarkModeStatePayloadToJson(
      this,
    );
  }
}

abstract class _DarkModeStatePayload implements DarkModeStatePayload {
  const factory _DarkModeStatePayload({required final DarkMode? darkMode}) =
      _$_DarkModeStatePayload;

  factory _DarkModeStatePayload.fromJson(Map<String, dynamic> json) =
      _$_DarkModeStatePayload.fromJson;

  @override
  DarkMode? get darkMode;
  @override
  @JsonKey(ignore: true)
  _$$_DarkModeStatePayloadCopyWith<_$_DarkModeStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
