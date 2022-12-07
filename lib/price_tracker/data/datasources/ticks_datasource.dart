import 'dart:async';

import 'package:price_tracker/core/data/datasources/remote_datasource_base.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/data/datasources/endpoints.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';

abstract class SymbolsTickDatasource implements RemoteDatasource {
  Future<SymbolTick> getSymbolTick(String symbol);
}

class SymbolsTickDatasourceImpl extends SymbolsTickDatasource {

  final NetworkService _networkService;

  SymbolsTickDatasourceImpl(this._networkService);

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {
    final params = {"forget": "d1ee7d0d-3ca9-fbb4-720b-5312d487185b"};
    _networkService.request(Endpoints.forget, params: params);
    
  }

  @override
  Future<SymbolTick> getSymbolTick(String symbol) {
    final params = {
      "ticks": symbol,
      "subscribe": "1"
    };
    final channel = _networkService.request(Endpoints.ticks, params: params);
    channel.asStream().listen((event) {
      logger.i(event);
     });
    return Future.value(SymbolTick("", "", ""));
  }

}