import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';

abstract class Repository {

  Future<List<MarketSymbol>> getMarketSymbols();
  Future<SymbolTick> getSymbolTick(String symbol);
  Future<void> forget();

}