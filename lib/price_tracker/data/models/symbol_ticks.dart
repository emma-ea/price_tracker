import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol_ticks.freezed.dart';
part 'symbol_ticks.g.dart';

@freezed
abstract class SymbolTick with _$SymbolTick {

  const factory SymbolTick({
    @JsonKey(name: 'msg_type')
    required String? messageType,
    @JsonKey(name: 'tick')
    required Ticks? tick,
  }) = _SymbolTick;

  factory SymbolTick.fromJson(Map json) =>
    _$SymbolTickFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));

}

@freezed
abstract class Ticks with _$Ticks {

  const factory Ticks({
    @JsonKey(name: 'ask')
    required double? ask,
    @JsonKey(name: 'bid')
    required double? bid,
    @JsonKey(name: 'quote')
    required double? quote,
    @JsonKey(name: 'epoch')
    required int epoch
  }) = _Ticks;

  factory Ticks.fromJson(Map json) => 
    _$TicksFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}