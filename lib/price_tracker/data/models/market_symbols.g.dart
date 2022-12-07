// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_symbols.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketSymbol _$$_MarketSymbolFromJson(Map<String, dynamic> json) =>
    _$_MarketSymbol(
      messageType: json['msg_type'] as String,
      activeSymbols: (json['active_symbols'] as List<dynamic>)
          .map((e) => ActiveSymbol.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MarketSymbolToJson(_$_MarketSymbol instance) =>
    <String, dynamic>{
      'msg_type': instance.messageType,
      'active_symbols': instance.activeSymbols,
    };

_$_ActiveSymbol _$$_ActiveSymbolFromJson(Map<String, dynamic> json) =>
    _$_ActiveSymbol(
      displayName: json['display_name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$_ActiveSymbolToJson(_$_ActiveSymbol instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'symbol': instance.symbol,
    };
