import 'dart:async';
import 'dart:convert';

import 'package:price_tracker/core/data/datasources/remote_datasource_base.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/core/logging_utils.dart';
import 'package:price_tracker/price_tracker/data/datasources/endpoints.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';

abstract class MarketSymbolsDatasource implements RemoteDatasource {
  Stream<MarketSymbol> getMarketSymbols();
}

class MarketSymbolsDatasourceImpl extends MarketSymbolsDatasource {

  final NetworkService _networkService;
  final StreamController<List<MarketSymbol>> _streamController = StreamController.broadcast();

  MarketSymbolsDatasourceImpl(this._networkService);

  @override
  StreamController get dataStreamController => _streamController;

  @override
  void dispose() {
    final params = {"forget": "d1ee7d0d-3ca9-fbb4-720b-5312d487185b"};
    _networkService.request(Endpoints.forget, params: params);
  }

  @override
  Stream<MarketSymbol> getMarketSymbols() {
    final params = {
      "active_symbols": "brief",
      "product_type": "basic"
    };
    final channel = _networkService.request(Endpoints.activeSymbols, params: params);
    
    return channel.stream.map((event) => MarketSymbol.fromJson(event));
  }
  
}