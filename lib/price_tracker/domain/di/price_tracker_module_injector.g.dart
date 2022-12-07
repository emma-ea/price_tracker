// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_tracker_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$PriceTrackerModuleInjector extends PriceTrackerModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<Repository>((c) => RepositoryImpl(
          c<MarketSymbolsDatasource>(), c<SymbolsTickDatasource>()))
      ..registerFactory<MarketSymbolsDatasource>(
          (c) => MarketSymbolsDatasourceImpl(c<NetworkService>()))
      ..registerFactory<SymbolsTickDatasource>(
          (c) => SymbolsTickDatasourceImpl(c<NetworkService>()))
      ..registerSingleton((c) => AvailableSymbols(c<Repository>()))
      ..registerSingleton((c) => AvailableTicks(c<Repository>()));
  }
}
