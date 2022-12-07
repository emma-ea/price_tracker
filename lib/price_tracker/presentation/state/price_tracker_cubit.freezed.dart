// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_tracker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PriceTrackerState {
  PriceTrackerStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceTrackerStatePayload payload) initial,
    required TResult Function(PriceTrackerStatePayload payload) loading,
    required TResult Function(PriceTrackerStatePayload payload) loaded,
    required TResult Function(PriceTrackerStatePayload payload) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceTrackerStatePayload payload)? initial,
    TResult? Function(PriceTrackerStatePayload payload)? loading,
    TResult? Function(PriceTrackerStatePayload payload)? loaded,
    TResult? Function(PriceTrackerStatePayload payload)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceTrackerStatePayload payload)? initial,
    TResult Function(PriceTrackerStatePayload payload)? loading,
    TResult Function(PriceTrackerStatePayload payload)? loaded,
    TResult Function(PriceTrackerStatePayload payload)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPriceTrackerState value) initial,
    required TResult Function(_LoadingPriceTrackerState value) loading,
    required TResult Function(_LoadedPriceTrackerState value) loaded,
    required TResult Function(_ErrorPriceTrackerState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPriceTrackerState value)? initial,
    TResult? Function(_LoadingPriceTrackerState value)? loading,
    TResult? Function(_LoadedPriceTrackerState value)? loaded,
    TResult? Function(_ErrorPriceTrackerState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPriceTrackerState value)? initial,
    TResult Function(_LoadingPriceTrackerState value)? loading,
    TResult Function(_LoadedPriceTrackerState value)? loaded,
    TResult Function(_ErrorPriceTrackerState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceTrackerStateCopyWith<PriceTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceTrackerStateCopyWith<$Res> {
  factory $PriceTrackerStateCopyWith(
          PriceTrackerState value, $Res Function(PriceTrackerState) then) =
      _$PriceTrackerStateCopyWithImpl<$Res, PriceTrackerState>;
  @useResult
  $Res call({PriceTrackerStatePayload payload});

  $PriceTrackerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PriceTrackerStateCopyWithImpl<$Res, $Val extends PriceTrackerState>
    implements $PriceTrackerStateCopyWith<$Res> {
  _$PriceTrackerStateCopyWithImpl(this._value, this._then);

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
              as PriceTrackerStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceTrackerStatePayloadCopyWith<$Res> get payload {
    return $PriceTrackerStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialPriceTrackerStateCopyWith<$Res>
    implements $PriceTrackerStateCopyWith<$Res> {
  factory _$$_InitialPriceTrackerStateCopyWith(
          _$_InitialPriceTrackerState value,
          $Res Function(_$_InitialPriceTrackerState) then) =
      __$$_InitialPriceTrackerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceTrackerStatePayload payload});

  @override
  $PriceTrackerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_InitialPriceTrackerStateCopyWithImpl<$Res>
    extends _$PriceTrackerStateCopyWithImpl<$Res, _$_InitialPriceTrackerState>
    implements _$$_InitialPriceTrackerStateCopyWith<$Res> {
  __$$_InitialPriceTrackerStateCopyWithImpl(_$_InitialPriceTrackerState _value,
      $Res Function(_$_InitialPriceTrackerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_InitialPriceTrackerState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PriceTrackerStatePayload,
    ));
  }
}

/// @nodoc

class _$_InitialPriceTrackerState implements _InitialPriceTrackerState {
  const _$_InitialPriceTrackerState({required this.payload});

  @override
  final PriceTrackerStatePayload payload;

  @override
  String toString() {
    return 'PriceTrackerState.initial(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialPriceTrackerState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialPriceTrackerStateCopyWith<_$_InitialPriceTrackerState>
      get copyWith => __$$_InitialPriceTrackerStateCopyWithImpl<
          _$_InitialPriceTrackerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceTrackerStatePayload payload) initial,
    required TResult Function(PriceTrackerStatePayload payload) loading,
    required TResult Function(PriceTrackerStatePayload payload) loaded,
    required TResult Function(PriceTrackerStatePayload payload) error,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceTrackerStatePayload payload)? initial,
    TResult? Function(PriceTrackerStatePayload payload)? loading,
    TResult? Function(PriceTrackerStatePayload payload)? loaded,
    TResult? Function(PriceTrackerStatePayload payload)? error,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceTrackerStatePayload payload)? initial,
    TResult Function(PriceTrackerStatePayload payload)? loading,
    TResult Function(PriceTrackerStatePayload payload)? loaded,
    TResult Function(PriceTrackerStatePayload payload)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPriceTrackerState value) initial,
    required TResult Function(_LoadingPriceTrackerState value) loading,
    required TResult Function(_LoadedPriceTrackerState value) loaded,
    required TResult Function(_ErrorPriceTrackerState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPriceTrackerState value)? initial,
    TResult? Function(_LoadingPriceTrackerState value)? loading,
    TResult? Function(_LoadedPriceTrackerState value)? loaded,
    TResult? Function(_ErrorPriceTrackerState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPriceTrackerState value)? initial,
    TResult Function(_LoadingPriceTrackerState value)? loading,
    TResult Function(_LoadedPriceTrackerState value)? loaded,
    TResult Function(_ErrorPriceTrackerState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPriceTrackerState implements PriceTrackerState {
  const factory _InitialPriceTrackerState(
          {required final PriceTrackerStatePayload payload}) =
      _$_InitialPriceTrackerState;

  @override
  PriceTrackerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_InitialPriceTrackerStateCopyWith<_$_InitialPriceTrackerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingPriceTrackerStateCopyWith<$Res>
    implements $PriceTrackerStateCopyWith<$Res> {
  factory _$$_LoadingPriceTrackerStateCopyWith(
          _$_LoadingPriceTrackerState value,
          $Res Function(_$_LoadingPriceTrackerState) then) =
      __$$_LoadingPriceTrackerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceTrackerStatePayload payload});

  @override
  $PriceTrackerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_LoadingPriceTrackerStateCopyWithImpl<$Res>
    extends _$PriceTrackerStateCopyWithImpl<$Res, _$_LoadingPriceTrackerState>
    implements _$$_LoadingPriceTrackerStateCopyWith<$Res> {
  __$$_LoadingPriceTrackerStateCopyWithImpl(_$_LoadingPriceTrackerState _value,
      $Res Function(_$_LoadingPriceTrackerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_LoadingPriceTrackerState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PriceTrackerStatePayload,
    ));
  }
}

/// @nodoc

class _$_LoadingPriceTrackerState implements _LoadingPriceTrackerState {
  const _$_LoadingPriceTrackerState({required this.payload});

  @override
  final PriceTrackerStatePayload payload;

  @override
  String toString() {
    return 'PriceTrackerState.loading(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingPriceTrackerState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingPriceTrackerStateCopyWith<_$_LoadingPriceTrackerState>
      get copyWith => __$$_LoadingPriceTrackerStateCopyWithImpl<
          _$_LoadingPriceTrackerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceTrackerStatePayload payload) initial,
    required TResult Function(PriceTrackerStatePayload payload) loading,
    required TResult Function(PriceTrackerStatePayload payload) loaded,
    required TResult Function(PriceTrackerStatePayload payload) error,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceTrackerStatePayload payload)? initial,
    TResult? Function(PriceTrackerStatePayload payload)? loading,
    TResult? Function(PriceTrackerStatePayload payload)? loaded,
    TResult? Function(PriceTrackerStatePayload payload)? error,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceTrackerStatePayload payload)? initial,
    TResult Function(PriceTrackerStatePayload payload)? loading,
    TResult Function(PriceTrackerStatePayload payload)? loaded,
    TResult Function(PriceTrackerStatePayload payload)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPriceTrackerState value) initial,
    required TResult Function(_LoadingPriceTrackerState value) loading,
    required TResult Function(_LoadedPriceTrackerState value) loaded,
    required TResult Function(_ErrorPriceTrackerState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPriceTrackerState value)? initial,
    TResult? Function(_LoadingPriceTrackerState value)? loading,
    TResult? Function(_LoadedPriceTrackerState value)? loaded,
    TResult? Function(_ErrorPriceTrackerState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPriceTrackerState value)? initial,
    TResult Function(_LoadingPriceTrackerState value)? loading,
    TResult Function(_LoadedPriceTrackerState value)? loaded,
    TResult Function(_ErrorPriceTrackerState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPriceTrackerState implements PriceTrackerState {
  const factory _LoadingPriceTrackerState(
          {required final PriceTrackerStatePayload payload}) =
      _$_LoadingPriceTrackerState;

  @override
  PriceTrackerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingPriceTrackerStateCopyWith<_$_LoadingPriceTrackerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedPriceTrackerStateCopyWith<$Res>
    implements $PriceTrackerStateCopyWith<$Res> {
  factory _$$_LoadedPriceTrackerStateCopyWith(_$_LoadedPriceTrackerState value,
          $Res Function(_$_LoadedPriceTrackerState) then) =
      __$$_LoadedPriceTrackerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceTrackerStatePayload payload});

  @override
  $PriceTrackerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_LoadedPriceTrackerStateCopyWithImpl<$Res>
    extends _$PriceTrackerStateCopyWithImpl<$Res, _$_LoadedPriceTrackerState>
    implements _$$_LoadedPriceTrackerStateCopyWith<$Res> {
  __$$_LoadedPriceTrackerStateCopyWithImpl(_$_LoadedPriceTrackerState _value,
      $Res Function(_$_LoadedPriceTrackerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_LoadedPriceTrackerState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PriceTrackerStatePayload,
    ));
  }
}

/// @nodoc

class _$_LoadedPriceTrackerState implements _LoadedPriceTrackerState {
  const _$_LoadedPriceTrackerState({required this.payload});

  @override
  final PriceTrackerStatePayload payload;

  @override
  String toString() {
    return 'PriceTrackerState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedPriceTrackerState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedPriceTrackerStateCopyWith<_$_LoadedPriceTrackerState>
      get copyWith =>
          __$$_LoadedPriceTrackerStateCopyWithImpl<_$_LoadedPriceTrackerState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceTrackerStatePayload payload) initial,
    required TResult Function(PriceTrackerStatePayload payload) loading,
    required TResult Function(PriceTrackerStatePayload payload) loaded,
    required TResult Function(PriceTrackerStatePayload payload) error,
  }) {
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceTrackerStatePayload payload)? initial,
    TResult? Function(PriceTrackerStatePayload payload)? loading,
    TResult? Function(PriceTrackerStatePayload payload)? loaded,
    TResult? Function(PriceTrackerStatePayload payload)? error,
  }) {
    return loaded?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceTrackerStatePayload payload)? initial,
    TResult Function(PriceTrackerStatePayload payload)? loading,
    TResult Function(PriceTrackerStatePayload payload)? loaded,
    TResult Function(PriceTrackerStatePayload payload)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPriceTrackerState value) initial,
    required TResult Function(_LoadingPriceTrackerState value) loading,
    required TResult Function(_LoadedPriceTrackerState value) loaded,
    required TResult Function(_ErrorPriceTrackerState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPriceTrackerState value)? initial,
    TResult? Function(_LoadingPriceTrackerState value)? loading,
    TResult? Function(_LoadedPriceTrackerState value)? loaded,
    TResult? Function(_ErrorPriceTrackerState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPriceTrackerState value)? initial,
    TResult Function(_LoadingPriceTrackerState value)? loading,
    TResult Function(_LoadedPriceTrackerState value)? loaded,
    TResult Function(_ErrorPriceTrackerState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedPriceTrackerState implements PriceTrackerState {
  const factory _LoadedPriceTrackerState(
          {required final PriceTrackerStatePayload payload}) =
      _$_LoadedPriceTrackerState;

  @override
  PriceTrackerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedPriceTrackerStateCopyWith<_$_LoadedPriceTrackerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorPriceTrackerStateCopyWith<$Res>
    implements $PriceTrackerStateCopyWith<$Res> {
  factory _$$_ErrorPriceTrackerStateCopyWith(_$_ErrorPriceTrackerState value,
          $Res Function(_$_ErrorPriceTrackerState) then) =
      __$$_ErrorPriceTrackerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceTrackerStatePayload payload});

  @override
  $PriceTrackerStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_ErrorPriceTrackerStateCopyWithImpl<$Res>
    extends _$PriceTrackerStateCopyWithImpl<$Res, _$_ErrorPriceTrackerState>
    implements _$$_ErrorPriceTrackerStateCopyWith<$Res> {
  __$$_ErrorPriceTrackerStateCopyWithImpl(_$_ErrorPriceTrackerState _value,
      $Res Function(_$_ErrorPriceTrackerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_ErrorPriceTrackerState(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PriceTrackerStatePayload,
    ));
  }
}

/// @nodoc

class _$_ErrorPriceTrackerState implements _ErrorPriceTrackerState {
  const _$_ErrorPriceTrackerState({required this.payload});

  @override
  final PriceTrackerStatePayload payload;

  @override
  String toString() {
    return 'PriceTrackerState.error(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorPriceTrackerState &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorPriceTrackerStateCopyWith<_$_ErrorPriceTrackerState> get copyWith =>
      __$$_ErrorPriceTrackerStateCopyWithImpl<_$_ErrorPriceTrackerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PriceTrackerStatePayload payload) initial,
    required TResult Function(PriceTrackerStatePayload payload) loading,
    required TResult Function(PriceTrackerStatePayload payload) loaded,
    required TResult Function(PriceTrackerStatePayload payload) error,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PriceTrackerStatePayload payload)? initial,
    TResult? Function(PriceTrackerStatePayload payload)? loading,
    TResult? Function(PriceTrackerStatePayload payload)? loaded,
    TResult? Function(PriceTrackerStatePayload payload)? error,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PriceTrackerStatePayload payload)? initial,
    TResult Function(PriceTrackerStatePayload payload)? loading,
    TResult Function(PriceTrackerStatePayload payload)? loaded,
    TResult Function(PriceTrackerStatePayload payload)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPriceTrackerState value) initial,
    required TResult Function(_LoadingPriceTrackerState value) loading,
    required TResult Function(_LoadedPriceTrackerState value) loaded,
    required TResult Function(_ErrorPriceTrackerState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPriceTrackerState value)? initial,
    TResult? Function(_LoadingPriceTrackerState value)? loading,
    TResult? Function(_LoadedPriceTrackerState value)? loaded,
    TResult? Function(_ErrorPriceTrackerState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPriceTrackerState value)? initial,
    TResult Function(_LoadingPriceTrackerState value)? loading,
    TResult Function(_LoadedPriceTrackerState value)? loaded,
    TResult Function(_ErrorPriceTrackerState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPriceTrackerState implements PriceTrackerState {
  const factory _ErrorPriceTrackerState(
          {required final PriceTrackerStatePayload payload}) =
      _$_ErrorPriceTrackerState;

  @override
  PriceTrackerStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorPriceTrackerStateCopyWith<_$_ErrorPriceTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PriceTrackerStatePayload {
  Stream<MarketSymbol>? get symbols => throw _privateConstructorUsedError;
  Stream<SymbolTick>? get ticks => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceTrackerStatePayloadCopyWith<PriceTrackerStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceTrackerStatePayloadCopyWith<$Res> {
  factory $PriceTrackerStatePayloadCopyWith(PriceTrackerStatePayload value,
          $Res Function(PriceTrackerStatePayload) then) =
      _$PriceTrackerStatePayloadCopyWithImpl<$Res, PriceTrackerStatePayload>;
  @useResult
  $Res call(
      {Stream<MarketSymbol>? symbols, Stream<SymbolTick>? ticks, String error});
}

/// @nodoc
class _$PriceTrackerStatePayloadCopyWithImpl<$Res,
        $Val extends PriceTrackerStatePayload>
    implements $PriceTrackerStatePayloadCopyWith<$Res> {
  _$PriceTrackerStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = freezed,
    Object? ticks = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      symbols: freezed == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as Stream<MarketSymbol>?,
      ticks: freezed == ticks
          ? _value.ticks
          : ticks // ignore: cast_nullable_to_non_nullable
              as Stream<SymbolTick>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceTrackerStatePayloadCopyWith<$Res>
    implements $PriceTrackerStatePayloadCopyWith<$Res> {
  factory _$$_PriceTrackerStatePayloadCopyWith(
          _$_PriceTrackerStatePayload value,
          $Res Function(_$_PriceTrackerStatePayload) then) =
      __$$_PriceTrackerStatePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<MarketSymbol>? symbols, Stream<SymbolTick>? ticks, String error});
}

/// @nodoc
class __$$_PriceTrackerStatePayloadCopyWithImpl<$Res>
    extends _$PriceTrackerStatePayloadCopyWithImpl<$Res,
        _$_PriceTrackerStatePayload>
    implements _$$_PriceTrackerStatePayloadCopyWith<$Res> {
  __$$_PriceTrackerStatePayloadCopyWithImpl(_$_PriceTrackerStatePayload _value,
      $Res Function(_$_PriceTrackerStatePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = freezed,
    Object? ticks = freezed,
    Object? error = null,
  }) {
    return _then(_$_PriceTrackerStatePayload(
      symbols: freezed == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as Stream<MarketSymbol>?,
      ticks: freezed == ticks
          ? _value.ticks
          : ticks // ignore: cast_nullable_to_non_nullable
              as Stream<SymbolTick>?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriceTrackerStatePayload implements _PriceTrackerStatePayload {
  const _$_PriceTrackerStatePayload(
      {required this.symbols, required this.ticks, required this.error});

  @override
  final Stream<MarketSymbol>? symbols;
  @override
  final Stream<SymbolTick>? ticks;
  @override
  final String error;

  @override
  String toString() {
    return 'PriceTrackerStatePayload(symbols: $symbols, ticks: $ticks, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceTrackerStatePayload &&
            (identical(other.symbols, symbols) || other.symbols == symbols) &&
            (identical(other.ticks, ticks) || other.ticks == ticks) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbols, ticks, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceTrackerStatePayloadCopyWith<_$_PriceTrackerStatePayload>
      get copyWith => __$$_PriceTrackerStatePayloadCopyWithImpl<
          _$_PriceTrackerStatePayload>(this, _$identity);
}

abstract class _PriceTrackerStatePayload implements PriceTrackerStatePayload {
  const factory _PriceTrackerStatePayload(
      {required final Stream<MarketSymbol>? symbols,
      required final Stream<SymbolTick>? ticks,
      required final String error}) = _$_PriceTrackerStatePayload;

  @override
  Stream<MarketSymbol>? get symbols;
  @override
  Stream<SymbolTick>? get ticks;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_PriceTrackerStatePayloadCopyWith<_$_PriceTrackerStatePayload>
      get copyWith => throw _privateConstructorUsedError;
}
