import 'package:price_tracker/price_tracker/data/datasources/market_symbols_datasource.dart';
import 'package:price_tracker/price_tracker/data/datasources/ticks_datasource.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/domain/repositories/repository.dart';

class RepositoryImpl extends Repository {

  final MarketSymbolsDatasource _marketSymbolsDatasource;
  final SymbolsTickDatasource _symbolsTickDatasource;

  RepositoryImpl(this._marketSymbolsDatasource, this._symbolsTickDatasource);

  @override
  Future<List<MarketSymbol>> getMarketSymbols() {
    return _marketSymbolsDatasource.getMarketSymbols();
  }

  @override
  Future<SymbolTick> getSymbolTick(String symbol) {
    return _symbolsTickDatasource.getSymbolTick(symbol);
  }
  
  @override
  Future<void> forget() async {
    _marketSymbolsDatasource.dispose();
    _symbolsTickDatasource.dispose();
  }
  
}