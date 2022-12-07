import 'dart:async';

import 'package:price_tracker/core/data/datasources/remote_datasource_base.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/price_tracker/data/datasources/endpoints.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';

abstract class SymbolsTickDatasource implements RemoteDatasource {
  Future<SymbolTick> getSymbolTick(String symbol);
}

class SymbolsTickDatasourceImpl extends SymbolsTickDatasource {

  final NetworkService _networkService;

  SymbolsTickDatasourceImpl(this._networkService);

  @override
  // TODO: implement dataStreamController
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {
    final headers = {"forget": "d1ee7d0d-3ca9-fbb4-720b-5312d487185b"};
    _networkService.listen(Endpoints.forget, headers: headers);
    
  }

  @override
  Future<SymbolTick> getSymbolTick(String symbol) {
    final headers = {
      "ticks": symbol,
      "subscribe": "1"
    };
    _networkService.listen(Endpoints.ticks, headers: headers);
    return Future.value();
  }

}