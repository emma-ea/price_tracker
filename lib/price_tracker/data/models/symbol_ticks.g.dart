// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_ticks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymbolTick _$$_SymbolTickFromJson(Map<String, dynamic> json) =>
    _$_SymbolTick(
      messageType: json['msg_type'] as String,
      tick: Ticks.fromJson(json['tick'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SymbolTickToJson(_$_SymbolTick instance) =>
    <String, dynamic>{
      'msg_type': instance.messageType,
      'tick': instance.tick,
    };

_$_Ticks _$$_TicksFromJson(Map<String, dynamic> json) => _$_Ticks(
      ask: json['ask'] as int,
      bid: json['bid'] as int,
      quota: json['quota'] as int,
    );

Map<String, dynamic> _$$_TicksToJson(_$_Ticks instance) => <String, dynamic>{
      'ask': instance.ask,
      'bid': instance.bid,
      'quota': instance.quota,
    };
