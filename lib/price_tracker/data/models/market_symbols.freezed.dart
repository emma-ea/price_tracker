// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_symbols.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketSymbol _$MarketSymbolFromJson(Map<String, dynamic> json) {
  return _MarketSymbol.fromJson(json);
}

/// @nodoc
mixin _$MarketSymbol {
  @JsonKey(name: 'msg_type')
  String get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol> get activeSymbols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketSymbolCopyWith<MarketSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSymbolCopyWith<$Res> {
  factory $MarketSymbolCopyWith(
          MarketSymbol value, $Res Function(MarketSymbol) then) =
      _$MarketSymbolCopyWithImpl<$Res, MarketSymbol>;
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_type') String messageType,
      @JsonKey(name: 'active_symbols') List<ActiveSymbol> activeSymbols});
}

/// @nodoc
class _$MarketSymbolCopyWithImpl<$Res, $Val extends MarketSymbol>
    implements $MarketSymbolCopyWith<$Res> {
  _$MarketSymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? activeSymbols = null,
  }) {
    return _then(_value.copyWith(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      activeSymbols: null == activeSymbols
          ? _value.activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketSymbolCopyWith<$Res>
    implements $MarketSymbolCopyWith<$Res> {
  factory _$$_MarketSymbolCopyWith(
          _$_MarketSymbol value, $Res Function(_$_MarketSymbol) then) =
      __$$_MarketSymbolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'msg_type') String messageType,
      @JsonKey(name: 'active_symbols') List<ActiveSymbol> activeSymbols});
}

/// @nodoc
class __$$_MarketSymbolCopyWithImpl<$Res>
    extends _$MarketSymbolCopyWithImpl<$Res, _$_MarketSymbol>
    implements _$$_MarketSymbolCopyWith<$Res> {
  __$$_MarketSymbolCopyWithImpl(
      _$_MarketSymbol _value, $Res Function(_$_MarketSymbol) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? activeSymbols = null,
  }) {
    return _then(_$_MarketSymbol(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      activeSymbols: null == activeSymbols
          ? _value._activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketSymbol implements _MarketSymbol {
  const _$_MarketSymbol(
      {@JsonKey(name: 'msg_type')
          required this.messageType,
      @JsonKey(name: 'active_symbols')
          required final List<ActiveSymbol> activeSymbols})
      : _activeSymbols = activeSymbols;

  factory _$_MarketSymbol.fromJson(Map<String, dynamic> json) =>
      _$$_MarketSymbolFromJson(json);

  @override
  @JsonKey(name: 'msg_type')
  final String messageType;
  final List<ActiveSymbol> _activeSymbols;
  @override
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol> get activeSymbols {
    if (_activeSymbols is EqualUnmodifiableListView) return _activeSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeSymbols);
  }

  @override
  String toString() {
    return 'MarketSymbol(messageType: $messageType, activeSymbols: $activeSymbols)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketSymbol &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            const DeepCollectionEquality()
                .equals(other._activeSymbols, _activeSymbols));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, messageType,
      const DeepCollectionEquality().hash(_activeSymbols));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketSymbolCopyWith<_$_MarketSymbol> get copyWith =>
      __$$_MarketSymbolCopyWithImpl<_$_MarketSymbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketSymbolToJson(
      this,
    );
  }
}

abstract class _MarketSymbol implements MarketSymbol {
  const factory _MarketSymbol(
      {@JsonKey(name: 'msg_type')
          required final String messageType,
      @JsonKey(name: 'active_symbols')
          required final List<ActiveSymbol> activeSymbols}) = _$_MarketSymbol;

  factory _MarketSymbol.fromJson(Map<String, dynamic> json) =
      _$_MarketSymbol.fromJson;

  @override
  @JsonKey(name: 'msg_type')
  String get messageType;
  @override
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol> get activeSymbols;
  @override
  @JsonKey(ignore: true)
  _$$_MarketSymbolCopyWith<_$_MarketSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveSymbol _$ActiveSymbolFromJson(Map<String, dynamic> json) {
  return _ActiveSymbol.fromJson(json);
}

/// @nodoc
mixin _$ActiveSymbol {
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveSymbolCopyWith<ActiveSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveSymbolCopyWith<$Res> {
  factory $ActiveSymbolCopyWith(
          ActiveSymbol value, $Res Function(ActiveSymbol) then) =
      _$ActiveSymbolCopyWithImpl<$Res, ActiveSymbol>;
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'symbol') String symbol});
}

/// @nodoc
class _$ActiveSymbolCopyWithImpl<$Res, $Val extends ActiveSymbol>
    implements $ActiveSymbolCopyWith<$Res> {
  _$ActiveSymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveSymbolCopyWith<$Res>
    implements $ActiveSymbolCopyWith<$Res> {
  factory _$$_ActiveSymbolCopyWith(
          _$_ActiveSymbol value, $Res Function(_$_ActiveSymbol) then) =
      __$$_ActiveSymbolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'symbol') String symbol});
}

/// @nodoc
class __$$_ActiveSymbolCopyWithImpl<$Res>
    extends _$ActiveSymbolCopyWithImpl<$Res, _$_ActiveSymbol>
    implements _$$_ActiveSymbolCopyWith<$Res> {
  __$$_ActiveSymbolCopyWithImpl(
      _$_ActiveSymbol _value, $Res Function(_$_ActiveSymbol) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? symbol = null,
  }) {
    return _then(_$_ActiveSymbol(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveSymbol implements _ActiveSymbol {
  const _$_ActiveSymbol(
      {@JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'symbol') required this.symbol});

  factory _$_ActiveSymbol.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveSymbolFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'symbol')
  final String symbol;

  @override
  String toString() {
    return 'ActiveSymbol(displayName: $displayName, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveSymbol &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveSymbolCopyWith<_$_ActiveSymbol> get copyWith =>
      __$$_ActiveSymbolCopyWithImpl<_$_ActiveSymbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveSymbolToJson(
      this,
    );
  }
}

abstract class _ActiveSymbol implements ActiveSymbol {
  const factory _ActiveSymbol(
      {@JsonKey(name: 'display_name') required final String displayName,
      @JsonKey(name: 'symbol') required final String symbol}) = _$_ActiveSymbol;

  factory _ActiveSymbol.fromJson(Map<String, dynamic> json) =
      _$_ActiveSymbol.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'symbol')
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveSymbolCopyWith<_$_ActiveSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}
