import 'dart:async';
import 'dart:convert';

import 'package:price_tracker/core/data/datasources/remote_datasource_base.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/price_tracker/data/datasources/endpoints.dart';
import 'package:price_tracker/price_tracker/data/models/symbol_ticks.dart';

abstract class TicksSymbolDatasource implements RemoteDatasource {
  Stream<SymbolTick> getSymbolTick(String symbol);
}

class TicksSymbolDatasourceImpl extends TicksSymbolDatasource {
  final NetworkService _networkService;

  TicksSymbolDatasourceImpl(this._networkService);

  @override
  void dispose() {
    final params = {"forget_all": "ticks"};
    _networkService.request(params: params);
    
  }

  @override
  Stream<SymbolTick> getSymbolTick(String symbol) {
    final params = {
      "ticks": symbol,
      "subscribe": "1"
    };
    final channel = _networkService.request(params: params);
    
    return channel.stream.map((event) => SymbolTick.fromJson(jsonDecode(event)));
  }

}