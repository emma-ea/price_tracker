import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_symbols.freezed.dart';
part 'market_symbols.g.dart';

@freezed
abstract class MarketSymbol with _$MarketSymbol {

  const factory MarketSymbol({
    @JsonKey(name: 'msg_type')
    required String? messageType,
    @JsonKey(name: 'active_symbols')
    required List<ActiveSymbol>? activeSymbols,
  }) = _MarketSymbol;
  
  factory MarketSymbol.fromJson(Map json) => 
    _$MarketSymbolFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
  
}

@freezed
abstract class ActiveSymbol with _$ActiveSymbol {

  const factory ActiveSymbol({
    @JsonKey(name: 'display_name')
    required String? displayName,
    @JsonKey(name: 'symbol')
    required String? symbol,
    @JsonKey(name: 'market')
    required String? market,
    @JsonKey(name: 'market_display_name')
    required String? marketName
  }) = _ActiveSymbol;

  factory ActiveSymbol.fromJson(Map json) => 
    _$ActiveSymbolFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));

}