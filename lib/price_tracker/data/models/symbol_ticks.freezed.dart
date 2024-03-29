// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol_ticks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymbolTick _$SymbolTickFromJson(Map<String, dynamic> json) {
  return _SymbolTick.fromJson(json);
}

/// @nodoc
mixin _$SymbolTick {
  @JsonKey(name: 'msg_type')
  String? get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tick')
  Ticks? get tick => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymbolTickCopyWith<SymbolTick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolTickCopyWith<$Res> {
  factory $SymbolTickCopyWith(
          SymbolTick value, $Res Function(SymbolTick) then) =
      _$SymbolTickCopyWithImpl<$Res, SymbolTick>;
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_type') String? messageType,
      @JsonKey(name: 'tick') Ticks? tick});

  $TicksCopyWith<$Res>? get tick;
}

/// @nodoc
class _$SymbolTickCopyWithImpl<$Res, $Val extends SymbolTick>
    implements $SymbolTickCopyWith<$Res> {
  _$SymbolTickCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = freezed,
    Object? tick = freezed,
  }) {
    return _then(_value.copyWith(
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      tick: freezed == tick
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as Ticks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicksCopyWith<$Res>? get tick {
    if (_value.tick == null) {
      return null;
    }

    return $TicksCopyWith<$Res>(_value.tick!, (value) {
      return _then(_value.copyWith(tick: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SymbolTickCopyWith<$Res>
    implements $SymbolTickCopyWith<$Res> {
  factory _$$_SymbolTickCopyWith(
          _$_SymbolTick value, $Res Function(_$_SymbolTick) then) =
      __$$_SymbolTickCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_type') String? messageType,
      @JsonKey(name: 'tick') Ticks? tick});

  @override
  $TicksCopyWith<$Res>? get tick;
}

/// @nodoc
class __$$_SymbolTickCopyWithImpl<$Res>
    extends _$SymbolTickCopyWithImpl<$Res, _$_SymbolTick>
    implements _$$_SymbolTickCopyWith<$Res> {
  __$$_SymbolTickCopyWithImpl(
      _$_SymbolTick _value, $Res Function(_$_SymbolTick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = freezed,
    Object? tick = freezed,
  }) {
    return _then(_$_SymbolTick(
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      tick: freezed == tick
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as Ticks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SymbolTick implements _SymbolTick {
  const _$_SymbolTick(
      {@JsonKey(name: 'msg_type') required this.messageType,
      @JsonKey(name: 'tick') required this.tick});

  factory _$_SymbolTick.fromJson(Map<String, dynamic> json) =>
      _$$_SymbolTickFromJson(json);

  @override
  @JsonKey(name: 'msg_type')
  final String? messageType;
  @override
  @JsonKey(name: 'tick')
  final Ticks? tick;

  @override
  String toString() {
    return 'SymbolTick(messageType: $messageType, tick: $tick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SymbolTick &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.tick, tick) || other.tick == tick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, messageType, tick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SymbolTickCopyWith<_$_SymbolTick> get copyWith =>
      __$$_SymbolTickCopyWithImpl<_$_SymbolTick>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymbolTickToJson(
      this,
    );
  }
}

abstract class _SymbolTick implements SymbolTick {
  const factory _SymbolTick(
      {@JsonKey(name: 'msg_type') required final String? messageType,
      @JsonKey(name: 'tick') required final Ticks? tick}) = _$_SymbolTick;

  factory _SymbolTick.fromJson(Map<String, dynamic> json) =
      _$_SymbolTick.fromJson;

  @override
  @JsonKey(name: 'msg_type')
  String? get messageType;
  @override
  @JsonKey(name: 'tick')
  Ticks? get tick;
  @override
  @JsonKey(ignore: true)
  _$$_SymbolTickCopyWith<_$_SymbolTick> get copyWith =>
      throw _privateConstructorUsedError;
}

Ticks _$TicksFromJson(Map<String, dynamic> json) {
  return _Ticks.fromJson(json);
}

/// @nodoc
mixin _$Ticks {
  @JsonKey(name: 'ask')
  double? get ask => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid')
  double? get bid => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote')
  double? get quote => throw _privateConstructorUsedError;
  @JsonKey(name: 'epoch')
  int get epoch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicksCopyWith<Ticks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicksCopyWith<$Res> {
  factory $TicksCopyWith(Ticks value, $Res Function(Ticks) then) =
      _$TicksCopyWithImpl<$Res, Ticks>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ask') double? ask,
      @JsonKey(name: 'bid') double? bid,
      @JsonKey(name: 'quote') double? quote,
      @JsonKey(name: 'epoch') int epoch});
}

/// @nodoc
class _$TicksCopyWithImpl<$Res, $Val extends Ticks>
    implements $TicksCopyWith<$Res> {
  _$TicksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ask = freezed,
    Object? bid = freezed,
    Object? quote = freezed,
    Object? epoch = null,
  }) {
    return _then(_value.copyWith(
      ask: freezed == ask
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as double?,
      bid: freezed == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as double?,
      epoch: null == epoch
          ? _value.epoch
          : epoch // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicksCopyWith<$Res> implements $TicksCopyWith<$Res> {
  factory _$$_TicksCopyWith(_$_Ticks value, $Res Function(_$_Ticks) then) =
      __$$_TicksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ask') double? ask,
      @JsonKey(name: 'bid') double? bid,
      @JsonKey(name: 'quote') double? quote,
      @JsonKey(name: 'epoch') int epoch});
}

/// @nodoc
class __$$_TicksCopyWithImpl<$Res> extends _$TicksCopyWithImpl<$Res, _$_Ticks>
    implements _$$_TicksCopyWith<$Res> {
  __$$_TicksCopyWithImpl(_$_Ticks _value, $Res Function(_$_Ticks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ask = freezed,
    Object? bid = freezed,
    Object? quote = freezed,
    Object? epoch = null,
  }) {
    return _then(_$_Ticks(
      ask: freezed == ask
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as double?,
      bid: freezed == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as double?,
      epoch: null == epoch
          ? _value.epoch
          : epoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ticks implements _Ticks {
  const _$_Ticks(
      {@JsonKey(name: 'ask') required this.ask,
      @JsonKey(name: 'bid') required this.bid,
      @JsonKey(name: 'quote') required this.quote,
      @JsonKey(name: 'epoch') required this.epoch});

  factory _$_Ticks.fromJson(Map<String, dynamic> json) =>
      _$$_TicksFromJson(json);

  @override
  @JsonKey(name: 'ask')
  final double? ask;
  @override
  @JsonKey(name: 'bid')
  final double? bid;
  @override
  @JsonKey(name: 'quote')
  final double? quote;
  @override
  @JsonKey(name: 'epoch')
  final int epoch;

  @override
  String toString() {
    return 'Ticks(ask: $ask, bid: $bid, quote: $quote, epoch: $epoch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticks &&
            (identical(other.ask, ask) || other.ask == ask) &&
            (identical(other.bid, bid) || other.bid == bid) &&
            (identical(other.quote, quote) || other.quote == quote) &&
            (identical(other.epoch, epoch) || other.epoch == epoch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ask, bid, quote, epoch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicksCopyWith<_$_Ticks> get copyWith =>
      __$$_TicksCopyWithImpl<_$_Ticks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicksToJson(
      this,
    );
  }
}

abstract class _Ticks implements Ticks {
  const factory _Ticks(
      {@JsonKey(name: 'ask') required final double? ask,
      @JsonKey(name: 'bid') required final double? bid,
      @JsonKey(name: 'quote') required final double? quote,
      @JsonKey(name: 'epoch') required final int epoch}) = _$_Ticks;

  factory _Ticks.fromJson(Map<String, dynamic> json) = _$_Ticks.fromJson;

  @override
  @JsonKey(name: 'ask')
  double? get ask;
  @override
  @JsonKey(name: 'bid')
  double? get bid;
  @override
  @JsonKey(name: 'quote')
  double? get quote;
  @override
  @JsonKey(name: 'epoch')
  int get epoch;
  @override
  @JsonKey(ignore: true)
  _$$_TicksCopyWith<_$_Ticks> get copyWith =>
      throw _privateConstructorUsedError;
}
