import 'package:kiwi/kiwi.dart';
import 'package:price_tracker/price_tracker/data/datasources/market_symbols_datasource.dart';
import 'package:price_tracker/price_tracker/data/datasources/ticks_symbol_datasource.dart';
import 'package:price_tracker/price_tracker/data/repository/repository_impl.dart';
import 'package:price_tracker/price_tracker/domain/repositories/repository.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_market_symbol.dart';
import 'package:price_tracker/price_tracker/domain/usecases/available_symbol_ticks.dart';
import 'package:price_tracker/price_tracker/domain/usecases/dispose_connection.dart';

part 'price_tracker_module_injector.g.dart';

abstract class PriceTrackerModuleInjector {
  static late KiwiContainer container;
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$PriceTrackerModuleInjector()._configure();
  }

  @Register.factory(Repository, from: RepositoryImpl)
  @Register.factory(MarketSymbolsDatasource, from: MarketSymbolsDatasourceImpl)
  @Register.factory(TicksSymbolDatasource, from: TicksSymbolDatasourceImpl)
  @Register.singleton(AvailableSymbols)
  @Register.singleton(AvailableTicks)
  @Register.singleton(DisposeConnection)
  void _configure();

}

PriceTrackerModuleInjector priceTrackerModuleInjector() => _$PriceTrackerModuleInjector();