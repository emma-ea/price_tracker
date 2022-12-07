import 'dart:async';

import 'package:price_tracker/core/data/datasources/remote_datasource_base.dart';
import 'package:price_tracker/core/data/network/network_service.dart';
import 'package:price_tracker/price_tracker/data/datasources/endpoints.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';

abstract class MarketSymbolsDatasource implements RemoteDatasource {
  Future<List<MarketSymbol>> getMarketSymbols();
}

class MarketDatasourceImpl extends MarketSymbolsDatasource {

  final NetworkService _networkService;

  MarketDatasourceImpl(this._networkService);

  @override
  // TODO: implement dataStreamController
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {
    final headers = {"forget": "d1ee7d0d-3ca9-fbb4-720b-5312d487185b"};
    _networkService.listen(Endpoints.forget, headers: headers);
  }

  @override
  Future<List<MarketSymbol>> getMarketSymbols() async {
    final headers = {
      "active_symbols": "brief",
      "product_type": "basic"
    };
    _networkService.listen(Endpoints.activeSymbols, headers: headers);
    return List<MarketSymbol>.empty();
  }
  
}