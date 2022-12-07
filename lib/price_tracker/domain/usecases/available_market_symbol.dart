import 'package:price_tracker/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:price_tracker/core/usecase_typedefs.dart';
import 'package:price_tracker/price_tracker/data/models/market_symbols.dart';
import 'package:price_tracker/price_tracker/domain/repositories/repository.dart';

class AvailableSymbols extends Usecase<Stream<MarketSymbol>?, NoParams> {

  final Repository _repository;

  AvailableSymbols(this._repository);

  @override
  Future<Either<UIError, Stream<MarketSymbol>?>> call([params]) async {
    try {
      final results = _repository.getMarketSymbols();
      return Right(results);
    } on NetworkFailure catch(exception, _) {
      return Left(UIError(exception.message));
    }
  }
}